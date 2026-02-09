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
