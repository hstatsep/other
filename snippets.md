# Snippets

## How to fix “port in use” error
1. Copy/paste this command:
```
sudo apt install lsof
```

2. Copy/paste this command:
```
lsof -i tcp:8080
```

3. Identify the PID from the previous command. You’ll need to enter it in the next command

4. Copy/paste this command, but use the number from step 2 instead of `PID`:
```
kill -9 PID
```
