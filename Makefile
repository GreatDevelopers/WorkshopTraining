# Macros

ELE_ADD = Shops/Electric/
FOU_ADD = Shops/Foundry/
BLS_ADD = Shops/Blacksmithy/
FIT_ADD = Shops/Fitting/
WEL_ADD = Shops/Welding/
MAC_ADD = Shops/Machine/
CAR_ADD = Shops/Carpentry/
GPP_CMD = gpp -o
PD_CMD = pandoc -s -o 
MSG = echo "\n You can find $@ in "

# Including files

include files.mk

# Creating Workshop file

Workshop_file : Workshop_file.pdf Workshop_file.html

# Creating Workshop file pdf

Workshop_file.pdf : $(ELE_FILES) $(FOU_FILES) $(BLS_FILES) $(FIT_FILES) $(WEL_FILES) $(MAC_FILES) $(CAR_FILES)
	$(GPP_CMD) training.md master.md
	$(PD_CMD) $@ training.md
	rm training.md
	$(MSG)"the current directory.\n"	

# Creating Workshop file html

Workshop_file.html : $(ELE_FILES) $(FOU_FILES) $(BLS_FILES) $(FIT_FILES) $(WEL_FILES) $(MAC_FILES) $(CAR_FILES)
	$(GPP_CMD) training.md master.md
	$(PD_CMD) $@ training.md
	rm training.md
	$(MSG)"the current directory.\n"	


# All output files

.PHONY : all
all : pdf html

# All pdfs

.PHONY : pdf
pdf : Workshop_file.pdf Electric.pdf Foundry.pdf Blacksmithy.pdf Fitting.pdf Welding.pdf Machine.pdf Carpentry.pdf

# All htmls

.PHONY : html
html : Workshop_file.html Electric.html Foundry.html Blacksmithy.html Fitting.html Welding.html Machine.html Carpentry.html

# Creating specific shop's pdf file

Electric.pdf : $(ELE_FILES)
	$(GPP_CMD) $(ELE_ADD)ele_file.md $(ELE_ADD)main.md
	$(PD_CMD) $(ELE_ADD)$@ $(ELE_ADD)ele_file.md
	rm  $(ELE_ADD)ele_file.md
	$(MSG)"$(ELE_ADD).\n"

Foundry.pdf : $(FOU_FILES)
	$(GPP_CMD) $(FOU_ADD)fou_file.md $(FOU_ADD)main.md
	$(PD_CMD) $(FOU_ADD)$@ $(FOU_ADD)fou_file.md
	rm  $(FOU_ADD)fou_file.md
	$(MSG)"$(FOU_ADD).\n"

Blacksmithy.pdf : $(BLS_FILES)
	$(GPP_CMD) $(BLS_ADD)bls_file.md $(BLS_ADD)main.md
	$(PD_CMD) $(BLS_ADD)$@ $(BLS_ADD)bls_file.md
	rm  $(BLS_ADD)bls_file.md
	$(MSG)"$(BLS_ADD).\n"

Fitting.pdf : $(FIT_FILES)
	$(GPP_CMD) $(FIT_ADD)fit_file.md $(FIT_ADD)main.md
	$(PD_CMD) $(FIT_ADD)$@ $(FIT_ADD)fit_file.md
	rm  $(FIT_ADD)fit_file.md
	$(MSG)"$(FIT_ADD).\n"

Welding.pdf : $(WEL_FILES)
	$(GPP_CMD) $(WEL_ADD)wel_file.md $(WEL_ADD)main.md
	$(PD_CMD) $(WEL_ADD)$@ $(WEL_ADD)wel_file.md
	rm  $(WEL_ADD)wel_file.md
	$(MSG)"$(WEL_ADD).\n"

Machine.pdf : $(MAC_FILES)
	$(GPP_CMD) $(MAC_ADD)mac_file.md $(MAC_ADD)main.md
	$(PD_CMD) $(MAC_ADD)$@ $(MAC_ADD)mac_file.md
	rm  $(MAC_ADD)mac_file.md
	$(MSG)"$(MAC_ADD).\n"

Carpentry.pdf : $(CAR_FILES)
	$(GPP_CMD) $(CAR_ADD)car_file.md $(CAR_ADD)main.md
	$(PD_CMD) $(CAR_ADD)$@ $(CAR_ADD)car_file.md
	rm  $(CAR_ADD)car_file.md
	$(MSG)"$(CAR_ADD).\n"

# Creating specific shop's html file

Electric.html : $(ELE_FILES)
	$(GPP_CMD) $(ELE_ADD)ele_file.md $(ELE_ADD)main.md
	$(PD_CMD) $(ELE_ADD)$@ $(ELE_ADD)ele_file.md
	rm  $(ELE_ADD)ele_file.md
	$(MSG)"$(ELE_ADD).\n"

Foundry.html : $(FOU_FILES)
	$(GPP_CMD) $(FOU_ADD)fou_file.md $(FOU_ADD)main.md
	$(PD_CMD) $(FOU_ADD)$@ $(FOU_ADD)fou_file.md
	rm  $(FOU_ADD)fou_file.md
	$(MSG)"$(FOU_ADD).\n"

Blacksmithy.html : $(BLS_FILES)
	$(GPP_CMD) $(BLS_ADD)bls_file.md $(BLS_ADD)main.md
	$(PD_CMD) $(BLS_ADD)$@ $(BLS_ADD)bls_file.md
	rm  $(BLS_ADD)bls_file.md
	$(MSG)"$(BLS_ADD).\n"

Fitting.html : $(FIT_FILES)
	$(GPP_CMD) $(FIT_ADD)fit_file.md $(FIT_ADD)main.md
	$(PD_CMD) $(FIT_ADD)$@ $(FIT_ADD)fit_file.md
	rm  $(FIT_ADD)fit_file.md
	$(MSG)"$(FIT_ADD).\n"

Welding.html : $(WEL_FILES)
	$(GPP_CMD) $(WEL_ADD)wel_file.md $(WEL_ADD)main.md
	$(PD_CMD) $(WEL_ADD)$@ $(WEL_ADD)wel_file.md
	rm  $(WEL_ADD)wel_file.md
	$(MSG)"$(WEL_ADD).\n"

Machine.html : $(MAC_FILES)
	$(GPP_CMD) $(MAC_ADD)mac_file.md $(MAC_ADD)main.md
	$(PD_CMD) $(MAC_ADD)$@ $(MAC_ADD)mac_file.md
	rm  $(MAC_ADD)mac_file.md
	$(MSG)"$(MAC_ADD).\n"

Carpentry.html : $(CAR_FILES)
	$(GPP_CMD) $(CAR_ADD)car_file.md $(CAR_ADD)main.md
	$(PD_CMD) $(CAR_ADD)$@ $(CAR_ADD)car_file.md
	rm  $(CAR_ADD)car_file.md
	$(MSG)"$(CAR_ADD).\n"


# Clean

.PHONY : clean
clean : clean_pdf clean_html

.PHONY : clean_pdf
clean_pdf :
	rm Workshop_file.pdf $(ELE_ADD)Electric.pdf $(FOU_ADD)Foundry.pdf $(BLS_ADD)Blacksmithy.pdf $(FIT_ADD)Fitting.pdf $(WEL_ADD)Welding.pdf $(MAC_ADD)Machine.pdf $(CAR_ADD)Carpentry.pdf

.PHONY : clean_html
clean_html :
	rm Workshop_file.html $(ELE_ADD)Electric.html $(FOU_ADD)Foundry.html $(BLS_ADD)Blacksmithy.html $(FIT_ADD)Fitting.html $(WEL_ADD)Welding.html $(MAC_ADD)Machine.html $(CAR_ADD)Carpentry.html
