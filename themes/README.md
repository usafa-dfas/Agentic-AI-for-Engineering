# Slide theme (pilot)

Lesson 2 is piloting Markdown slides with [Marp](https://marp.app). `agentic.css` reproduces the Lesson 1 PowerPoint look: AF logo, sidebar navigation, title rule, footer, tables, and code blocks.

## Edit and preview

1. In VS Code, install the **Marp for VS Code** extension.
2. Open the repo folder. `.vscode/settings.json` registers this theme and enables the HTML the slides use.
3. Open a lesson `.md` file, for example `Lesson Material/LSN 2 - Introduction to Agentic AI for Coding/lesson2.md`, and click **Open Preview to the Side**.
4. Export with the Marp icon › **Export Slide Deck** (PDF, HTML, or PPTX).

## Conventions

- Slides are separated by `---`. Each slide starts with `<!-- _class: <section> -->`, which highlights that sidebar item.
- The sidebar items and their order are set in the `<style>` block at the top of each lesson file.
- Speaker notes are HTML comments (`<!-- ... -->`) at the end of a slide.
- Layout helpers: `chip`, `cols`, `card`, `bubble you|agent`, `banner`, `flow`, `check`. Their usage is documented in `agentic.css`.
