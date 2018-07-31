# Including files

include files.mk
include macro.mk

.PHONY : Workshop_file Workshop_file.pdf Workshop_file.html all pdf html clean clean_html clean_pdf targets 

# Creating Workshop file

Workshop_file : Workshop_file.pdf Workshop_file.html

Workshop_file.pdf : 
	$(MAKE) $(PDF_CMD)

Workshop_file.html :
	$(MAKE) $(HTML_CMD)

# All output files

all : pdf html

pdf :
	$(MAKE) $(PDF_CMD)

html :
	$(MAKE) $(HTML_CMD)

# Specific pdf

$(SHOP_PDF) : 
	$(MAKE) $(PDF_CMD)

$(SHOP_HTML) : 
	$(MAKE) $(HTML_CMD)

# Clean

clean : clean_pdf clean_html

clean_pdf : 
	$(MAKE) $(PDF_CMD)

clean_html :
	$(MAKE) $(HTML_CMD)
		
# Showing all possible targets

targets :
	@ sed -n p targets.txt
