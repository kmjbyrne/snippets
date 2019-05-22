# Handy Shell Stuff


## History Commands

```bash
# show all contents in history buffer
history

# execute last command in the history buffer
!

# last 10 commands in the history buffer
history 10

# execute command from history using history registry ID <history-id>
!<history-id>

# execute command based on a text search (will take the latest if several matches are present)
?!<search-string>
```

## Run

Having a shebang line at the top of the file sets the active interpreter for that file. The novelty of this is that you can execute the file and let the files own shebang definition save you from writing a line

