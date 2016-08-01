To install do

```console
git clone git@github.com:khamutov/emacs-configs.git ~/.emacs.d
```

and run Emacs.

# Cheatsheet

## Edit

`C-a` Begin of line
`C-e` End of line
`M-g g` Go-to line
`C-@` set mark point

## Buffers

`C-x C-b` change buffer
`C-c p f` find in project

## Windows

`C-x 1` delete all other windows
`C-x 2` split horizontal
`C-x 3` split vertical
`C-x 0` delete current window

## CIDER:

`M-x cider-jack-in` start repl
`C-x C-e` send-to-repl
`C-c C-k` compile current buffer
`C-c M-n` set ns to ns on top of file
`C-c C-d C-d` display documentation for symbol under point
`M-.` navigate to symbol
`M-,` navigate to back
`C-c C-d C-a` find text across fun names and docs

`q` close stacktrace

## Paredit

`M-(` surround expression with ()

## Change window size:

`C-S-left`
`C-S-right`
`C-S-up`
`C-S-down`

## Magit

`M-x magit-status` git status
`s` stage file
`c c` to commit (type message and press C-c C-c to actually commit)
`b b` to change branch
`TAB` for file changes

`P u` git push
`F u` git pull
