# Including files

include ../../files.mk
include ../../macro.mk

# Creating Workshop file pdf

Workshop_file.pdf : $(ELE_FILES) $(FOU_FILES) $(BLS_FILES) $(FIT_FILES) $(WEL_FILES) $(MAC_FILES) $(CAR_FILES) master.md
	$(GPP_CMD) training.md master.md
	$(PD_CMD) $@ training.md
	rm training.md
	$(MSG)"the directory $(PDF_ADD).\n"

# All pdfs

.PHONY : pdf
pdf : Workshop_file.pdf Electric.pdf Foundry.pdf Blacksmithy.pdf Fitting.pdf Welding.pdf Machine.pdf Carpentry.pdf

# Creating specific shop's pdf file

Electric.pdf : $(ELE_FILES)
		$(GPP_CMD) $(ELE_ADD)ele_file.md $(ELE_ADD)main.md
		$(PD_CMD) $@ $(ELE_ADD)ele_file.md
		rm  $(ELE_ADD)ele_file.md
		$(MSG)"$(PDF_ADD).\n"

Foundry.pdf : $(FOU_FILES)
		$(GPP_CMD) $(FOU_ADD)fou_file.md $(FOU_ADD)main.md
		$(PD_CMD) $@ $(FOU_ADD)fou_file.md
		rm  $(FOU_ADD)fou_file.md
		$(MSG)"$(PDF_ADD).\n"

Blacksmithy.pdf : $(BLS_FILES)
		$(GPP_CMD) $(BLS_ADD)bls_file.md $(BLS_ADD)main.md
		$(PD_CMD) $@ $(BLS_ADD)bls_file.md
		rm  $(BLS_ADD)bls_file.md
		$(MSG)"$(PDF_ADD).\n"

Fitting.pdf : $(FIT_FILES)
		$(GPP_CMD) $(FIT_ADD)fit_file.md $(FIT_ADD)main.md
		$(PD_CMD) $@ $(FIT_ADD)fit_file.md
		rm  $(FIT_ADD)fit_file.md
		$(MSG)"$(PDF_ADD).\n"

Welding.pdf : $(WEL_FILES)
		$(GPP_CMD) $(WEL_ADD)wel_file.md $(WEL_ADD)main.md
		$(PD_CMD) $@ $(WEL_ADD)wel_file.md
		rm  $(WEL_ADD)wel_file.md
		$(MSG)"$(PDF_ADD).\n"

Machine.pdf : $(MAC_FILES)
		$(GPP_CMD) $(MAC_ADD)mac_file.md $(MAC_ADD)main.md
		$(PD_CMD) $@ $(MAC_ADD)mac_file.md
		rm  $(MAC_ADD)mac_file.md
		$(MSG)"$(PDF_ADD).\n"

Carpentry.pdf : $(CAR_FILES)
		$(GPP_CMD) $(CAR_ADD)car_file.md $(CAR_ADD)main.md
		$(PD_CMD) $@ $(CAR_ADD)car_file.md
		rm  $(CAR_ADD)car_file.md
		$(MSG)"$(PDF_ADD).\n"

.PHONY : clean_pdf
clean_pdf :
	rm *.pdf 
