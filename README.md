# fzf-ctags
A tool that allows to:
- browse ctags-generated index of symbols in the sources,
- open an editor (via `$EDITOR`) on the selected symbol.

Also, a preview window is available, showing the selected
symbol's line in a center of the screen, with syntax highlighting
(supporting `pygments` and `GNU Source-Highlight`).

# Screenshots

pygments:

![screen1](https://raw.githubusercontent.com/psprint/fzf-ctags/img/img/screen1.png)

pygments:

![screen2](https://raw.githubusercontent.com/psprint/fzf-ctags/img/img/screen3.png)

GNU Source Highlight.
![screen3](https://raw.githubusercontent.com/psprint/fzf-ctags/img/img/screen4.png)

# Installation

After downloading the repo issue `make install` to have the
main script binary `fzf-ctags` copied to your `$PATH`. Or,
if using Zsh (not required, `fzf-ctags` is written in Bash),
you could use `Zinit` plugin manager and issue:

```zsh
zinit as"null" sbin'bin/*~*lib' for psprint/fzf-ctags
```

Then, to open the interface, run `fzf-ctags`.

# Generating Ctags index

The index used is Emacs-style, `TAGS` file. To generate 
this kind of index use `-e` option with `ctags` binary.
The recommended ctags to use is
[universal-ctags/ctags](https://github.com/universal-ctags/ctags).
Example command to generate for `C` project could be:

```zsh
ctags -e -R --languages=C --langmap=C:.h.c --c-kinds=+px --extras=+r --extras=-{anonymous}
```
