# Agentic-AI-for-Engineering

A short course for U.S. Air Force Academy instructors on using agentic AI for engineering work and course development. No prior Git or coding-agent experience is assumed.

The course uses **ChatGPT Codex** as its coding agent. The method transfers to other agents such as Claude Code and GitHub Copilot.

## Syllabus

### LSN 1 – Introduction to Git and GitHub
Version control with GitHub Desktop: clone, commit, push, pull, branches, pull requests, merge conflicts, and undo. Ends with an Agent-Ready Checklist that puts one of your own projects on GitHub, ready for an agent.

### LSN 2 – Introduction to Agentic AI for Coding
The Specify → Generate → Implement → Adjudicate → Iterate method with ChatGPT Codex in the cloud (Codex cloud). Covers AGENTS.md, asking for a plan before code, reviewing an agent's diff and pull request, and verifying the result yourself. Uses the beam-calc example, then your own repo.

### LSN 3 – Agentic AI for Course App Development Using GitHub Pages
Build an interactive lecture app (a single-page HTML/JavaScript visualization) with Codex and publish it on GitHub Pages. Includes verifying the physics against known cases and checking that the app works in a classroom browser.

### LSN 4 – Agentic AI for MATLAB and Simulink
Use Codex locally (VS Code extension or CLI) where MATLAB is installed: test-driven changes with `runtests`, refactoring course scripts, generating plots and reports, and scripting Simulink models through the MATLAB API. The engineer still validates results against theory and hand calculations.

### LSN 5 – Agentic AI for Course Materials
Revise lesson notes, write homework and quiz problems, and build solution keys and rubrics in Word or LaTeX, verifying every worked solution independently. Then turn a task you repeat into a reusable Codex skill or AGENTS.md instructions.

### LSN 6 – Teaching and Assessing in the Age of Agents
USAFA and department GenAI policy, documentation, and data handling. Designing assignments when cadets have agents, grading the process (requirement, plan, review, test evidence, AI log), and team workflows. Each instructor leaves with a written plan for one of their own courses.

## Repository contents

- `Lesson Material/` – one folder per lesson with its slide deck. Lessons 1–2 are complete; 3–6 are planned.
- `templates/Agentic_AI_Course_Template.potx` – the PowerPoint template every deck uses. Its first slides explain how to use it.
- `Examples/markdown-slides-pilot/` – Lesson 2 as Markdown (Marp) slides, an example of an alternative to PowerPoint.
