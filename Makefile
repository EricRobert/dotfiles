.PHONY: all

SH := $(notdir $(shell echo $$SHELL))
$(info using $(SH))

SRC := $(wildcard $(SH)/*)
DST := $(patsubst $(SH)/%, $(HOME)/.%, $(SRC))

all: $(DST) $(patsubst codex/%, $(HOME)/.codex/%, $(wildcard codex/*.md))

$(HOME)/.%: $(PWD)/$(SH)/%
	ln -sf $< $@

$(HOME)/.codex:
	mkdir -p $@

$(HOME)/.codex/%: $(PWD)/codex/% | $(HOME)/.codex
	ln -sf $< $@
