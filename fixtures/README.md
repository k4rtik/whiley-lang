Manual regression fixtures for the Whiley VS Code extension.

Use these files from the Extension Development Host to smoke-test:

- syntax highlighting
- snippet expansion into realistic Whiley contexts
- `onEnterRules` indentation after lines ending in `:`
- token scopes with `Developer: Inspect Editor Tokens and Scopes`

Suggested pass:

1. Launch the extension with `Launch Extension` from `.vscode/launch.json`.
2. Open each `.whiley` file in this directory in the Extension Development Host.
3. Verify highlighting for declarations, types, operators, strings, and comments.
4. Place the cursor in the files and expand snippets such as `function`, `ifelse`, `switch`, `case`, and `type`.
5. Press Enter after lines ending in `:` such as `function`, `if`, `case`, and `default` and verify indentation.
