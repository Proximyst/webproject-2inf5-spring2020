.PHONY: pass
pass:
	echo This is an empty pass; use scss task

.PHONY: scss sass
scss:
	./scripts/watch-scss.sh
sass: scss

# modeline comment: do NOT remove "noet", GNU/make does not enjoy it.
# vim: set ff=unix autoindent ts=4 sw=4 tw=0 noet :
