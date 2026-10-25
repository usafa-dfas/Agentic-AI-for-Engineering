# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose and audience

Courseware for an **instructor short course** at the United States Air Force Academy (USAFA) on using agentic AI for engineering work and course development. The learners are **faculty/instructors**, not cadets: material should assume engineering expertise but little prior Git or coding-agent experience, and should connect each skill back to building and maintaining their own courses.

## Syllabus (from README.md)

1. LSN 1 – Introduction to Git and GitHub
2. LSN 2 – Introduction to Agentic AI for Coding
3. LSN 3 – Agentic AI for Course App Development Using GitHub Pages
4. LSN 4 – Agentic AI for MATLAB and Simulink
5. LSN 5 – Agentic AI for Course Materials
6. LSN 6 – Teaching and Assessing in the Age of Agents

Keep `README.md`'s syllabus in sync when lessons are added or renamed.

## Repository layout

- `Lesson Material/LSN <n> - <Title>/`: one folder per lesson, each holding its slide deck (`.pptx`). Folder names contain spaces; quote paths in shell commands.
- `templates/Agentic_AI_Course_Template.potx`: the course PowerPoint template. Every deck is built on it.
- `Examples/markdown-slides-pilot/`: Lesson 2 rebuilt as Marp Markdown slides, kept only to show an alternative to PowerPoint. It is not course material; don't keep it in sync with the deck.
- No build system, tests, or linters. Use `python-pptx` (installed) to read or edit decks, e.g. to dump slide text:

  ```bash
  python3 -c "
  import sys; from pptx import Presentation
  for i,s in enumerate(Presentation(sys.argv[1]).slides,1):
      print(i, ' | '.join(sh.text_frame.text for sh in s.shapes if sh.has_text_frame))
  " "Lesson Material/LSN 1 -  Introduction to GIT and GitHub/Agentic_AI_for_Engineering.pptx"
  ```

## Deck conventions

- **The `.pptx` is the source of truth.** Edit decks in place (run-level text edits preserve formatting); never regenerate a deck from a script, which would discard edits made in PowerPoint. One editor per deck at a time: Pull origin before starting.
- **Template:** 15 in × 11.25 in (4:3). The slide master carries the grey sidebar, AF logo, title rule, lesson tag, sidebar section list, footer, and slide number. Layouts:
  - Title
  - Title and Content
  - Two Content
  - Chip and Content (gray chip such as EXERCISE/SETUP, plus auto-numbered steps)
  - Chip, Steps, and Code
  - Title Only (tables, diagrams, composed slides)

  Use placeholders and layouts, not loose copies of the chrome.
- **Per deck, once (on the slide master):** set the lesson tag (`Lesson N`) and the sidebar section list (up to 11 items, one per line). Footer text is `Agentic AI for Engineering · Lesson N`.
- **Per slide:** one cyan `Nav highlight` text box over the current section in the sidebar, at y = 2.60 in + 0.42 in × (item index). When adding a slide, copy the highlight from a neighbor and move it.
- **Fonts:** Calibri (theme font; reference it as `+mn-lt`/`+mj-lt` rather than by name), Consolas for code and paths, Cambria Math for equations. **Colors:** theme slots dk2 navy `152A47`, accent1 blue `1F6FB2`, accent2 cyan `00B0F0`, accent3 gray `595959`, accent4 code background `1E1E1E`, accent5 rule `BFBFBF`, accent6 muted text `404040`.
- Every slide has speaker notes; keep that true when adding or editing slides.
- Structure: title → objectives/prerequisites → concepts → numbered hands-on `EXERCISE` slides → reference material (troubleshooting, quick reference) → knowledge check.
- Hands-on work uses **GitHub Desktop** and **VS Code** (GUI steps written as `Menu › Item`), not the git CLI.
- **Pull requests that change a deck** include before/after renders of changed slides and a summary of the text changes, since Git can't diff `.pptx`. Render with LibreOffice (`soffice --headless --convert-to pdf deck.pptx`, then `pdftoppm -jpeg -r 60 deck.pdf slide`). LibreOffice substitutes Carlito for Calibri with identical metrics, so text fit in renders is reliable.

## Cross-lesson threads

- **`beam-calc`** practice repo (cantilever tip deflection, δ = PL³/3EI, `beam.m` with `README.md`, `AGENTS.md`, `.gitignore`) is the running example in LSN 1; instructors copy it from a template repo.
- LSN 1 ends with an **"Agent-Ready Checklist"**: instructors bring one of their own projects to a private GitHub repo with a README, `.gitignore`, and an agent context file before LSN 2. Later lessons build on that repo.
- LSN 2 teaches the **Specify → Generate → Implement → Adjudicate → Iterate** method, plan-before-code, reviewing agent commits/branches/PRs, common agent failure modes, and documenting GenAI use. Its worked example uses Claude Code on the web with a `CLAUDE.md` context file.
- LSN 1 introduces `AGENTS.md` (read by Codex); LSN 2 adds `CLAUDE.md` (read by Claude Code), which imports `AGENTS.md`. Keep later lessons consistent with that split.

## Lesson 2 specifics

- LSN 2 continues the `beam-calc` thread: the worked example adds a uniformly distributed load (`tipDeflectionUDL`, δ = wL⁴/8EI; hand check 2.40 mm for w = 1000 N/m on the Lesson 1 section). Exercises 1–6 build on it; Exercise 7 moves to the instructor's own repo.
- Its `CLAUDE.md` example imports the Lesson 1 `AGENTS.md` with `@AGENTS.md`, so both agent tools share one rule set.
- The agent's cloud sandbox has no MATLAB; slides consistently make the instructor responsible for running tests.
