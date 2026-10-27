# Markdown slides pilot (alternative to PowerPoint)

An example of the same course material written as plain-text slides instead of a `.pptx`. This folder holds Lesson 2 of the course built with [Marp](https://marp.app): 22 slides with speaker notes, styled to match the PowerPoint decks.

It is a snapshot of an earlier version of Lesson 2 that used Claude Code; the course deck now uses ChatGPT Codex. The course itself uses PowerPoint (see `templates/`). This folder is here to show colleagues what the alternative looks like.

## View it

- **No install:** open `lesson2.pdf`. Speaker notes are PDF comments.
- **Edit and preview:** in VS Code, install the **Marp for VS Code** extension and open *this folder* (File › Open Folder). `.vscode/settings.json` registers the theme and enables the HTML the slides use. Open `lesson2.md` and click **Open Preview to the Side**.
- **Present:** Marp icon › **Export Slide Deck** › HTML, then open the file in a browser. Press **P** for the presenter view with notes.

## What's in it

| File | Purpose |
|---|---|
| `lesson2.md` | The slides. Slides are separated by `---`; speaker notes are HTML comments. |
| `agentic.css` | Theme reproducing the PowerPoint look: logo, sidebar navigation, title rule, footer, tables, code blocks. |
| `assets/branch-graph.svg` | The branch diagram. |
| `lesson2.pdf` | Exported copy. |

In the Markdown, each slide sets its sidebar highlight with one line, e.g. `<!-- _class: setup -->`. The list of section names is set in the `<style>` block at the top of `lesson2.md`. Layout helpers (`chip`, `cols`, `card`, `bubble you|agent`, `banner`, `flow`, `check`) are documented in `agentic.css`.

## Trade-offs observed

**Gains**
- Every change is a readable line-by-line diff in a pull request.
- A coding agent edits the text directly, with no generator scripts.
- The deck can be published to GitHub Pages as browser slides.

**Costs**
- Layout comes from the theme, not exact placement.
- Multi-column and card layouts need small HTML blocks inside the Markdown.
- The PPTX export is images, so it isn't editable in PowerPoint.
- The format is unfamiliar to most people who would inherit the course.
