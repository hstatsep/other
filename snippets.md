# Snippets

## How to fix “port in use” error
1. Enter `sudo apt install lsof`
2. Enter `lsof -i tcp:8080`
3. Identify the PID from the previous command. You’ll need to enter it in the next command:
4. Enter `kill -9 PID` but use the number from step 3 instead of `PID`
