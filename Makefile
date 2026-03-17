.PHONY: all

SH := $(notdir $(shell echo $$SHELL))
$(info using $(SH))

SRC := $(wildcard $(SH)/*)
DST := $(patsubst $(SH)/%, $(HOME)/.%, $(SRC))

all: $(DST)

$(HOME)/.%: $(PWD)/$(SH)/%
	ln -sf $< $@
