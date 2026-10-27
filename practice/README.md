# Practice repositories (course lead setup)

Lesson 1 Exercise 2 needs a GitHub **template repository** called `beam-calc`. Participants copy it with **Use this template**, so each person gets their own repo with full write access. They push to their copy, never to yours.

The files are in `beam-calc/` in this folder. They match what Lessons 1 and 2 show on screen:

| File | Contents |
|---|---|
| `beam.m` | Point-load tip deflection (prints 1.60 mm) |
| `tests/testBeam.m` | Hand-check and smoke tests (`runtests('tests')`) |
| `README.md` | How to run and test |
| `AGENTS.md` | First-draft agent instructions, improved in Lesson 2 |
| `.gitignore` | MATLAB, output, and secret exclusions |

## Create the template (once, before the first class)

1. Copy the `beam-calc` folder out of this repo to a location outside OneDrive.
2. In GitHub Desktop: **File › Add local repository** › select the copied folder › **create a repository**. Leave Git ignore as None (the folder already has a `.gitignore`), then click **Create repository**.
3. **Publish repository**:
   - Owner: the course organization (for example `usafa-dfas`).
   - Uncheck **Keep this code private**. Participants on personal or institutional accounts must be able to see it.
4. On GitHub, open the repo › **Settings** › **General** › tick **Template repository**.
5. Run `runtests('tests')` in MATLAB once to confirm both tests pass.

## Send participants the link

Put the template's URL (for example `https://github.com/usafa-dfas/beam-calc`) in the pre-class email with the other Lesson 1 prerequisites. In class, participants:

1. Open the link and click **Use this template › Create a new repository**: owner themselves, visibility **Private**.
2. Clone their new copy with GitHub Desktop (**File › Clone repository**).

## Keeping it in sync

If you change the practice files, change them here first, then copy the change to the template repo. Lesson 2's worked example assumes the original values (steel, L = 2.0 m, P = 500 N, 50 × 100 mm section).
