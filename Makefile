## Picking up the md files

MD_FILES = $(wildcard */*.md)
PDF_FILES = $(patsubst %/%.md, %/%.pdf, $(MD_FILES))

## creating pdf files

.PHONY : pdf
pdf : PDF-FILES

% : %/%.md
  cd $@
  pandoc -s -o $@ $<

## Remove automatically generated files

.PHONY : clean
clean :
  rm -f PDF_FILES
