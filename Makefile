.PHONY: all install uninstall tags

CWD := ${CURDIR}
all:

install: bin/fzf-ctags
	@cmd="sed -r -e 's|%FZF_DIR%|$(CWD)|g' bin/fzf-ctags >"; \
	if [ -d ~/bin ]; then \
		q="~/bin/$(notdir $<)"; \
	elif [ -d ~/.local/bin ]; then \
		q="~/.local/bin/$(notdir $<)"; \
	else \
		q="/usr/local/bin/$(notdir $<)"; \
	fi; \
	printf "Installing in: \e[1;38;5;208m$$q\e[0m…\n"; \
	eval "$$cmd $$q; chmod +x $$q"

uninstall:
	rm -f ~/bin/fzf-ctags ~/.local/bin/fzf-ctags /usr/local/bin/fzf-ctags

tags: bin/fzf-ctags
	@ctags -e --languages=Sh bin/fzf-ctags && \
		printf "\e[38;5;39mTAGS file has been generated.\e[0m\n" || \
		printf "\e[38;5;208mProblems generating tags.\e[0m\n"