# fzf-ctags
A tool that allows to:
- browse ctags-generated index of symbols in the sources,
- open an editor (via `$EDITOR`) on the selected symbol.

Also, a preview window is available, showing the selected
symbol's line in a center of the screen, with syntax highlighting
(supporting `pygments` and `GNU Source-Highlight`).

# Installation

After downloading the repo issue `make install` to have the
main script binary `fzf-ctags` copied to your `$PATH`. Or,
if using Zsh (not required, `fzf-ctags` is written in Bash),
you could use `Zinit` plugin manager and issue:

```zsh
zinit as"null" sbin'bin/*~*lib' for psprint/fzf-ctags
```

Then, to open the interface, run `fzf-ctags`.
