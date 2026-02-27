#!/usr/bin/env bash
# Session start hook for Chief of Staff system
# Fires on: startup (new session), compact (context compaction)
# Injects: today's date, calendar, weekly strategic focus, brain dump
# Output: plain text injected into conversation context

set -euo pipefail

# --- Resolve project directory ---
PROJECT_DIR="${CLAUDE_PROJECT_DIR:-$(cd "$(dirname "$0")/../.." && pwd)}"

# --- Today's date ---
TODAY=$(date +%Y-%m-%d)
DAY_OF_WEEK=$(date +%A)
FORMATTED_DATE=$(date +"%B %-d, %Y")

# --- Today's calendar ---
CALENDAR_FILE="$PROJECT_DIR/0. Operating System/Integrations/todays-calendar.md"
if [[ -f "$CALENDAR_FILE" ]] && [[ -s "$CALENDAR_FILE" ]]; then
  CALENDAR=$(cat "$CALENDAR_FILE")
else
  CALENDAR="No calendar data found. Set up a calendar integration to populate this file."
fi

# --- Weekly strategic focus (header before first ---) ---
WEEKLY_PLANS_DIR="$PROJECT_DIR/0. Operating System/Weekly Plans"
STRATEGIC_FOCUS=""

if [[ -d "$WEEKLY_PLANS_DIR" ]]; then
  LATEST_DATE=$(find "$WEEKLY_PLANS_DIR" -name "Week of 20*.md" -not -name "*Template*" -print0 | \
    xargs -0 -I{} basename {} .md | \
    sed 's/Week of //' | \
    awk -v today="$TODAY" '$1 <= today' | \
    sort -r | head -1)

  if [[ -n "$LATEST_DATE" ]]; then
    PLAN_FILE=$(find "$WEEKLY_PLANS_DIR" -name "Week of ${LATEST_DATE}.md" | head -1)
    if [[ -n "$PLAN_FILE" ]] && [[ -f "$PLAN_FILE" ]]; then
      STRATEGIC_FOCUS=$(awk '/^---$/{exit} {print}' "$PLAN_FILE")
    fi
  fi
fi

if [[ -z "$STRATEGIC_FOCUS" ]]; then
  STRATEGIC_FOCUS="No weekly plan found for this week. Consider running Plan My Week."
fi

# --- Brain dump (only if non-empty) ---
BRAIN_DUMP_FILE="$PROJECT_DIR/0. Operating System/Integrations/brain-dump.md"
BRAIN_DUMP=""
if [[ -f "$BRAIN_DUMP_FILE" ]] && [[ -s "$BRAIN_DUMP_FILE" ]]; then
  BRAIN_DUMP=$(cat "$BRAIN_DUMP_FILE")
fi

# --- Output plain text (not JSON — Claude Code injects plain text as conversation context) ---
cat <<CONTEXT
[SESSION CONTEXT — pre-loaded by session start hook]

Today: ${DAY_OF_WEEK}, ${FORMATTED_DATE} (${TODAY})

--- TODAY'S CALENDAR ---
${CALENDAR}

--- STRATEGIC FOCUS (this week) ---
${STRATEGIC_FOCUS}
CONTEXT

if [[ -n "$BRAIN_DUMP" ]]; then
  cat <<DUMP

--- BRAIN DUMP ---
${BRAIN_DUMP}
DUMP
fi

cat <<NOTE

--- END SESSION CONTEXT ---
This context was pre-loaded automatically. Do not re-read todays-calendar.md, the weekly plan header, or brain-dump.md unless the user asks to refresh.
NOTE
