
TERM = st

.PHONY: nvim
nvim: init
	$(TERM) cqfd &> /dev/null &

.PHONY: vim
vim: init
	$(TERM) cqfd -b vim &> /dev/null &

.PHONY: init
init:
	cqfd init
