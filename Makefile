TEX_PDFS := $(patsubst %.tex,%.pdf,$(wildcard *.tex))
MD_PDFS := $(patsubst %.md,%.pdf,$(wildcard *.md))

DEPFLAGS = -M -MP -MF $<.Td
LATEXMK := latexmk -xelatex -halt-on-error
POSTCOMPILE = @mv -f $<.Td $<.d && touch $@

all: $(TEX_PDFS)

%.pdf: %.tex %.d
	$(LATEXMK) $(DEPFLAGS) $<
	$(POSTCOMPILE)

%.d: ;
.PRECIOUS: %.d

clean:
	rm -f *.aux
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.log
	rm -f *.out
	rm -f *.d
	rm -f *.xdv

distclean: clean
	rm -f $(TEX_PDFS) $(MD_PDFS)

.PHONY: all clean dist-clean
.DEFAULT_GOAL := all

-include *.d
