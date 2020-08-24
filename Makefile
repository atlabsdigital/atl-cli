SHELL = /bin/bash

prefix ?= /usr/local
bindir ?= $(prefix)/bin
libdir ?= $(prefix)/lib
srcdir = Sources

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
		@rm -rf $(BUILDDIR)/release

.PHONY: clean
clean: distclean
		@rm -rf $(BUILDDIR)

