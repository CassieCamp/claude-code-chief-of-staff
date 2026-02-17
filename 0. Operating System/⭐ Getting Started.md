# ⭐ Getting Started

This guide has two parts:

1. **Steps 1-2: You do these yourself** — install the tools and open your vault. This takes about 10 minutes. 🛠️
2. **Steps 3-8: Claude walks you through these** — once Claude Code is running, just say **"Let's set up my vault"** and Claude will read this file and guide you through the rest conversationally. You don't need to read ahead. 🤝

> 💡 **If you're the type who likes to read everything first**, the full guide is below. But the fastest path is: install the tools (Steps 1-2), then hand it off to Claude.

---

## 🛠️ Step 1: Install the Tools

You need three things installed on your computer:

### 1. Obsidian (free) — where you *read* your vault
👉 Download from [obsidian.md](https://obsidian.md)

Obsidian is a note-taking app that works with plain text files on your computer. It makes your vault beautiful and readable on any device. Think of it as the "front end" — where you browse, review, and read everything Claude helps you build.

### 2. VS Code (free) — where you *work with* Claude
👉 Download from [code.visualstudio.com](https://code.visualstudio.com)

VS Code is a text editor — but don't worry, you're not writing code. You're opening your vault folder in it so Claude Code can see your files. It's the "back end" — where the conversations happen.

> 💡 If you already use **Cursor** ([cursor.com](https://cursor.com)), that works too — it's the same editor under the hood. But there's no advantage to switching. VS Code is free and does everything you need.

### 3. Claude Code — the AI that acts as your chief of staff
👉 Install the **Claude Code extension** inside VS Code (Extensions tab → search "Claude Code")

Claude Code reads your vault files and becomes your thinking partner. You'll need either:
- An **Anthropic API key** (pay-per-use), or
- A **Claude Max subscription** ($100/mo unlimited)

### ✅ Quick test

Once all three are installed:
1. Open Obsidian → you should see your vault files rendered beautifully
2. Open the **same folder** in VS Code → you should see the same files in a file tree
3. Open Claude Code in VS Code → type "hello" and make sure it responds

Both apps point to the same folder on your computer. Obsidian is for reading. VS Code + Claude is for working. 🎯

---

## 📁 Step 2: Get the Vault onto Your Computer

The vault is a folder of files. You need to get it onto your computer, then open it in both Obsidian and VS Code. There are two ways:

### Option A: Download from GitHub (easiest) 📥

1. Go to the GitHub repo: **[github.com/CassieCamp/claude-code-chief-of-staff](https://github.com/CassieCamp/claude-code-chief-of-staff)**
2. Click the green **"Code"** button → click **"Download ZIP"**
3. Unzip the downloaded file — you'll get a folder called `claude-code-chief-of-staff-main`
4. Move that folder somewhere permanent on your computer (e.g., Documents, Desktop — wherever you keep important files)
5. Rename it to whatever you want (e.g., `My Vault`, `Life OS`, your name — it's yours)

### Option B: Clone with Git (if you're comfortable with terminal) 🖥️

If you've used Git before:
```
git clone https://github.com/CassieCamp/claude-code-chief-of-staff.git
```
This creates a local copy you can update later with `git pull`. If "clone" and "git" mean nothing to you, use Option A — it works just as well.

### Open the vault in both apps

Once the folder is on your computer:

1. **Open in Obsidian:** Open Obsidian → "Open folder as vault" → select your vault folder. You should see the files rendered beautifully. 📖
2. **Open in VS Code:** File → Open Folder → select the **same folder**. You should see the same files in a file tree. 💻
3. **Open Claude Code:** Click the Claude Code icon in VS Code's sidebar → make sure it responds when you type "hello" 👋

Both apps point to the same folder. Obsidian is for reading. VS Code + Claude is for working. 🎯

> 💡 **Your vault structure looks like this:**
>
> ```
> Your Vault/
> ├── CLAUDE.md                          ← 🧠 Claude reads this every session
> ├── 0. Operating System/
> │   ├── 🔭 Whole Life Strategy.md     ← Your north star
> │   ├── 🎯 Quarterly Plan.md         ← Current quarter's priorities
> │   ├── ✅ Backlog.md                 ← Centralized to-do list
> │   ├── 🪞 User Profile.md           ← Personality assessments
> │   ├── Weekly Plans/                  ← 📅 One file per week
> │   ├── Toolkit/                       ← 🧰 Coaching frameworks
> │   ├── CoS Playbook/                  ← 📖 Ritual specs for Claude
> │   └── Integrations/                  ← 📡 External data
> ├── [Your life domain folders]         ← 🌱 Claude creates these with you
> └── ⭐ Getting Started.md              ← This file (safe to delete after setup)
> ```

---

## 🎉 You're set up — hand it off to Claude

You now have Obsidian, VS Code, and Claude Code all pointing at the same vault folder. **This is where you stop reading and start talking.**

In VS Code, open Claude Code and say:

> **"Let's set up my vault."**

Claude will read this file, pick up at Step 3, and walk you through the rest — discovering your life domains, building your north star, setting quarterly priorities, and more. It's a conversation, not a checklist. Just talk. ☀️

*Everything below is what Claude will guide you through. You can read ahead if you want, but you don't have to.*

---

## 💬 Step 3: Discover Your Life Domains

This is the most important step. Instead of creating folders yourself, **have a conversation with Claude** and let it build the structure from what you share. 🗣️

Say to Claude: **"Let's set up my vault."**

Claude will walk you through a discovery conversation. Just talk — use voice input (SuperWhisper, WhisperFlow, or built-in dictation) if that's easier than typing. Claude will ask questions like:

**🏢 Career discovery:**
1. Tell me about your current work situation. What do you do?
2. What do you love about your career so far?
3. What frustrates you about your career?
4. What was the happiest moment in your career in recent months?
5. What are the different ways you can imagine your career evolving?
6. Are you confident in your vision for your career, or would you like to spend more time exploring?

**🏡 Personal life discovery:**
1. What does your personal life look like right now? Family, health, home, finances.
2. What's going well that you want to protect?
3. What's causing stress or taking more energy than it should?
4. What would you change if you could wave a magic wand? ✨
5. Are there side projects, creative pursuits, or communities that matter to you?

**After the conversation, Claude will:**
- 📂 Create domain folders based on what surfaced (e.g., `1. Work/`, `2. Side Project/`, `3. Personal/`)
- 📝 Write hub documents for each with the context you shared
- ✅ Set up matching sections in [[✅ Backlog]]
- 🎨 The structure is *yours* — not a template. Someone might end up with 3 folders, someone else with 6.

Domain folders are for **context** — what's happening, meeting notes, decisions, reference material. Tasks and to-dos don't live here — they go in the centralized [[✅ Backlog]]. This keeps your domain folders clean and your backlog scannable in one place. 🧹

---

## 🔭 Step 4: Build Your Whole Life Strategy

The discovery conversation just surfaced the raw material. Now Claude helps you synthesize it into a north star. 🌟

Say to Claude: **"Let's work on my Whole Life Strategy."**

Claude will walk you through [[🔭 Whole Life Strategy]] section by section:

1. **The life you're building** — not the resume version. How do you want to *feel* on most days? What are your hard non-negotiables? (The career and personal discovery you just did feeds directly into this.)
2. **Structural constraints** — income floor, location, work type. The practical boundaries that make the vision real.
3. **Time horizons** — 10 years, 5 years, 1 year. Paint the picture at each altitude. 🎨
4. **Annual objectives** — 2-3 concrete outcomes for this year that move you toward the vision.

Take your time. This is a life design document, not a business plan. 💛

---

## 🎯 Step 5: Set Your Quarterly Priorities

With domains defined and a north star in place, set priorities for the current quarter.

Say to Claude: **"Let's build my Quarterly Plan."**

Claude will help you fill in [[🎯 Quarterly Plan]]:

- ✅ **YES list** — top 3 priorities, each tracing back to an annual objective. If it doesn't connect, it's noise.
- ❌ **NO list** — what are you explicitly *not* doing this quarter? This is as important as the YES list.
- ⚖️ **80/20 rule** — 80% signal (high-impact), 20% noise (necessary admin). If signal takes more than 100%, noise waits.
- 🏁 **Milestones** — what does "done" look like by end of quarter?

---

## 🪞 Step 6: Fill In Your User Profile (Optional)

Open [[🪞 User Profile]] and add any personality assessment results you have — Enneagram, DISC, StrengthsFinder, Human Design, To Be Magnetic Authentic Code, etc.

This isn't a framework — it's reference data about who you are. Claude uses it to personalize coaching across all tools and contexts. You can add results over time as you take assessments. 📊

**Claude will ask you:**

> Do you have results from any personality assessments? Things like Enneagram, DISC, StrengthsFinder, Human Design, or To Be Magnetic. If so, let's add them to your User Profile so I can reference them when coaching you.

---

## 📡 Step 7: Set Up Integrations (Optional)

Integrations pipe real-world data into your vault. The pattern is always the same: **external source → bridge → .md file → Claude reads it.** Claude never talks to any API directly. Your vault's filesystem is the integration layer.

None are required. Start with zero and add only when the friction justifies it. Tiers are ordered by risk, not complexity. 🔒

### 🟢 Tier 1 — No credentials, no third-party code (zero risk)

| Source              | How It Works                                                                   |
| ------------------- | ------------------------------------------------------------------------------ |
| **📧 Email**        | Paste into chat, Claude routes tasks                                           |
| **💬 Slack**        | Paste thread into chat, Claude routes tasks                                    |
| **📸 Screenshots**  | Drop a screenshot into chat — Claude can read images natively                  |
| **⌚ Wearable**     | Claude asks, you answer (eg. Oura ring: Readiness, Sleep, Activity, Cycle Day) |
| **🗣️ Meetings**    | Paste notes or summary into chat                                               |
| **📱 Apple Shortcuts** | On-device automation writes .md files to your vault (e.g., calendar export) |

Copy/paste and screenshots are underrated — zero config, zero credentials, and they force you to decide what's worth capturing. A screenshot of your weekly calendar, a Linear board, or a Slack thread tells Claude plenty without any API setup. Apple Shortcuts run entirely on-device with no API keys; they just write files. ✨

### 🟡 Tier 2 — Obsidian plugins, no credentials or read-only (low risk)

| Plugin | What It Does | Notes |
|--------|-------------|-------|
| **Granola Sync** | Meeting transcripts auto-sync to `Integrations/Granola/` | Authenticates through Granola's own app, not your vault |

Some plugins sync data without storing API keys in your vault — they piggyback on the source app's own authentication. Low risk, but still review the plugin source.

### 🟠 Tier 3 — Obsidian plugins with API keys (medium risk)

| Plugin | What It Does | Notes |
|--------|-------------|-------|
| **Linear** | Syncs Linear issues to vault as .md files | API key stored in `.obsidian/plugins/` |
| **Google Calendar** | Calendar sync for non-Apple users | OAuth credentials stored in `.obsidian/plugins/` |

⚠️ API keys are stored as **plain text** in `.obsidian/plugins/` (Obsidian doesn't support OS keychain storage). Add `.obsidian/` to `.gitignore` if you version-control your vault. Claude never reads this folder. Review plugin source code before installing — especially for low-download-count community plugins, where fewer eyes have vetted the code.

### 🔴 Tier 4 — MCP Servers (highest risk)

Direct API connections where Claude can read/write external services (Slack, Linear, calendar APIs, etc.). More powerful — Claude can create issues, send messages, update statuses — but API credentials live in Claude's config, and Claude itself can see and use them.

Don't start here. Upgrade to this tier only when Tier 1-3 bridges create real friction. 🚫

**🔒 Security principle:** Everything runs locally on your machine. Your vault files never leave your computer. The tiers represent increasing credential exposure: Tier 1 has none, Tier 4 gives Claude direct API access. The question is always: who can see the API key?

---

## 🧰 Step 8: Install Toolkit Tools (Optional)

The Toolkit is where you install frameworks you want Claude to use when coaching you. Browse `0. Operating System/Toolkit/` for existing tools, or create your own from `_Tool Template.md`.

You don't need any toolkit tools to get started. Install them when you have a specific need:
- 🚣 Want help with life design + balance? → Install [[🚣 The Deep Life — Cal Newport]]
- ⚛️ Want to build better habits? → Install [[⚛️ Atomic Habits — James Clear]]
- 🎨 Want to unlock creativity? → Install [[🎨 The Artist's Way — Julia Cameron]]
- 🪩 In a career transition? → Install [[🪩 Never Search Alone — Phyl Terry]]
- 🪞 Working on identity/values? → Install [[✨ To Be Magnetic]]

Each tool has a "Claude Integration" section that tells Claude when and how to apply the framework. 🤖

---

## 🎉 You're Ready

Say **"Good Morning"** to Claude in VS Code. That's it.

Claude will read your calendar, check your weekly plan, ask about your energy level, and help you time-block your day. The conversation begins. ☀️

**Your first week rhythm:**
- 📅 **Sunday:** Say "Plan My Week" — Claude scans your backlogs and helps draft the week
- ☀️ **Each morning:** Say "Good Morning" — Claude helps you plan and time-block the day
- 💬 **Throughout the day:** Just talk. Paste meeting notes, ask for help with decisions, add tasks, think out loud
- 👋 **End of session:** Say "TTFN" — Claude saves everything to the right files before the context window closes
- 📊 **Next session:** Say "Debrief" — Claude catches you up on where things stand

---

*This file is safe to delete once you've completed setup.* 🗑️
