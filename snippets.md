# Snippets

## How to fix “port in use” error
1. Copy/paste this command (then press <kbd>ENTER</kbd>):
```
sudo apt install lsof
```

2. Copy/paste this command (then press <kbd>ENTER</kbd>):
```
lsof -i tcp:8080
```

3. Identify the PID from the previous command. You’ll need to enter it in the next command

4. Copy/paste this command, but use the number from step 2 instead of `PID` (then press <kbd>ENTER</kbd>):
```
kill -9 PID
```

## Preview not loading
Seeing an error like `This site can’t be reached. Check if there is a typo in ...8080.githubpreview.dev. DNS_PROBE_FINISHED_NXDOMAIN`

Try this command:
```
http-server -p 8080 -a 0.0.0.0 -c-1 .
```

## Fix CTRL+# keybindings in IDE
* Press <kbd>CTRL</kbd>+<kbd>SHIFT</kbd>+<kbd>P</kbd>
* Type **Preferences: Open Keyboard Shortcuts (JSON)**
* Copy/paste these keybindings:

```js
[
  { "key": "ctrl+1", "command": "-workbench.action.focusFirstEditorGroup" },
  { "key": "ctrl+2", "command": "-workbench.action.focusSecondEditorGroup" },
  { "key": "ctrl+3", "command": "-workbench.action.focusThirdEditorGroup" },
  { "key": "ctrl+4", "command": "-workbench.action.focusFourthEditorGroup" },
  { "key": "ctrl+5", "command": "-workbench.action.focusFifthEditorGroup" },
  { "key": "ctrl+6", "command": "-workbench.action.focusSixthEditorGroup" },
  { "key": "ctrl+7", "command": "-workbench.action.focusSeventhEditorGroup" },
  { "key": "ctrl+8", "command": "-workbench.action.focusEighthEditorGroup" },
  { "key": "ctrl+9", "command": "-workbench.action.focusLastEditorGroup" }
]
```
