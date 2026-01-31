# Repository Guidelines

## Project Structure & Module Organization
- `project.godot` is the entry point for the Godot 4.6 project.
- `scenes/` holds gameplay scenes (`*.tscn`) and scripts (`*.gd`).
- `assets/` contains textures, audio, meshes, and resource data (`*.tres`).
- `shaders/` holds custom Godot shaders (`*.gdshader`).
- `addons/` includes third-party Godot plugins.
- `docs/` contains contributor documentation (see `docs/translation-guide.md`).
- `resource_definitions/`, `blender/`, and `linux/` store data definitions, source art, and packaging metadata.

## Build, Test, and Development Commands
- Open `project.godot` in the Godot editor (4.6.x) and press Play to run locally.
- After working with the `godot` command, always run tests before finishing.
- Use the Export presets in `export_presets.cfg` to build platform exports from the editor.
- There is no documented CLI build pipeline; if you add one, keep it in `docs/` and update this file.

## Coding Style & Naming Conventions
- GDScript uses 2-space indentation. Set Godot to **Spaces, size 2**.
- `.editorconfig` enforces 2-space indentation for `*.gd` files.
- Avoid `:=` in GDScript; declare types explicitly instead.
- Use `snake_case` for variables/functions, `PascalCase` for `class_name` declarations (e.g., `class_name Hall`).
- Keep scene and script names paired and descriptive (e.g., `scenes/Hall.tscn` + `scenes/Hall.gd`).

## Testing Guidelines
- Automated tests are not present. Validate changes manually in the Godot editor.
- When touching content generation or navigation, test multiple exhibits and transitions.
- For localization work, follow `docs/translation-guide.md` and verify language selection in-game.

## Commit & Pull Request Guidelines
- Commit messages are short, imperative, and sentence-style (e.g., "Update to Godot v4.6", "XR: Add thumbstick teleport").
- PRs should explain the change, link related issues, and include screenshots or short clips for visual/UI changes.
- For bug reports and fixes, include the platform and exhibit name (see the README guidance).

## Configuration & Content Notes
- Wikipedia/Wikimedia content is central; avoid changes that alter creative direction without discussion.
- If you update assets or translations, keep resource references stable and avoid renaming unless necessary.
