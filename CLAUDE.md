# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Purpose and audience

Courseware for an **instructor short course** at the United States Air Force Academy (USAFA) on using agentic AI for engineering work and course development. The learners are **faculty/instructors**, not cadets: material should assume engineering expertise but little prior Git or coding-agent experience, and should connect each skill back to building and maintaining their own courses.

## Syllabus (from README.md)

1. LSN 1 – Introduction to Git and GitHub
2. LSN 2 – Introduction to Agentic AI for Coding
3. LSN 3 – Agentic AI for Course App Development Using GitHub Pages
4. LSN 4 – Agentic AI for MATLAB and Simulink

Keep `README.md`'s syllabus in sync when lessons are added or renamed.

## Repository layout

- `Lesson Material/LSN <n> - <Title>/` — one folder per lesson, each holding the slide deck (`.pptx`). Folder names contain spaces; quote paths in shell commands.
- No build system, tests, or linters. Content is binary PowerPoint; use `python-pptx` (installed) to read or edit decks, e.g. to dump slide text:

  ```bash
  python3 -c "
  import sys; from pptx import Presentation
  for i,s in enumerate(Presentation(sys.argv[1]).slides,1):
      print(i, ' | '.join(sh.text_frame.text for sh in s.shapes if sh.has_text_frame))
  " "Lesson Material/LSN 1 -  Introduction to GIT and GitHub/Agentic_AI_for_Engineering.pptx"
  ```

## Deck conventions (shared by existing lessons)

- 15 in × 11.25 in (4:3) slides, single `DEFAULT` layout; fonts are Segoe UI (body), Cascadia Mono (code/paths), Cambria Math (equations).
- Every slide carries a section-navigation strip at the top (e.g. `Overview | Concepts | Setup | … | Review`) highlighting the current section, plus a lesson tag. New slides must update this strip consistently across the deck.
- Every slide has speaker notes — keep that true when adding or editing slides.
- Structure: title → objectives/prerequisites → concepts → numbered hands-on `EXERCISE` slides → reference material (troubleshooting, quick reference) → knowledge check.
- Hands-on work uses **GitHub Desktop** and **VS Code** (GUI steps written as `Menu › Item`), not the git CLI.

## Cross-lesson threads

- **`beam-calc`** practice repo (cantilever tip deflection, δ = PL³/3EI, `beam.m` with `README.md`, `AGENTS.md`, `.gitignore`) is the running example in LSN 1; instructors copy it from a template repo.
- LSN 1 ends with an **"Agent-Ready Checklist"**: instructors bring one of their own projects to a private GitHub repo with a README, `.gitignore`, and an agent context file before LSN 2. Later lessons build on that repo.
- LSN 2 teaches the **Specify → Generate → Implement → Adjudicate → Iterate** method, plan-before-code, reviewing agent commits/branches/PRs, common agent failure modes, and documenting GenAI use. Its worked example uses Claude Code on the web with a `CLAUDE.md` context file.
- LSN 1 references `AGENTS.md` (Codex-style) while LSN 2 uses `CLAUDE.md`; be deliberate about which agent tool each lesson targets.

## Lesson 2 specifics

- LSN 2 continues the `beam-calc` thread: the worked example adds a uniformly distributed load (`tipDeflectionUDL`, δ = wL⁴/8EI; hand check 2.40 mm for w = 1000 N/m on the Lesson 1 section). Exercises 1–6 build on it; Exercise 7 moves to the instructor's own repo.
- Its `CLAUDE.md` example imports the Lesson 1 `AGENTS.md` with `@AGENTS.md`, so both agent tools share one rule set.
- The agent's cloud sandbox has no MATLAB; slides consistently make the instructor responsible for running tests.
