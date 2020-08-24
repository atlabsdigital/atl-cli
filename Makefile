SHELL = /bin/bash

prefix ?= /usr/local
bindir ?= $(prefix)/bin
libdir ?= $(prefix)/lib
srcdir = cli/Sources

REPODIR = $(shell pwd)
BUILDDIR = $(REPODIR)/.build
SOURCES = $(wildcard $(srcdir)/**/*.swift)

.DEFAULT_GOAL = all

.PHONY: all
all: atl

atl: $(SOURCES)
		@swift build \
			-c release \
			--disable-sandbox \
			--build-path "$(BUILDDIR)"

.PHONY: install
install: atl
		@install -d "$(bindir)"
		@install "$(BUILDDIR)/release/atl"	"$(bindir)"		

.PHONY: uninstall
uninstall: 
		@rm -rf "$(bindir)/atl"

.PHONY: clean
distclean:
		@rm -f $(BUILDDIR)/release

.PHONY: clean
clean: distclean
		@rm -f $(BUILDDIR)

