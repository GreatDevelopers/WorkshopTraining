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

# Including files

include files.mk

# Creating Workshop file

Workshop_file.pdf : $(ELE_FILES) $(FOU_FILES) $(BLS_FILES) $(FIT_FILES) $(WEL_FILES) $(MAC_FILES) $(CAR_FILES)
	$(GPP_CMD) training.md master.md
	$(PD_CMD) $@ training.md
	rm training.md

# All pdfs

.PHONY : all
all : Workshop_file.pdf Electric.pdf Foundry.pdf Blacksmithy.pdf Fitting.pdf Welding.pdf Machine.pdf Carpentry.pdf

# Creating specific shop's file

Electric.pdf : $(ELE_FILES)
	$(GPP_CMD) $(ELE_ADD)ele_file.md $(ELE_ADD)main.md
	$(PD_CMD) $(ELE_ADD)$@ $(ELE_ADD)ele_file.md
	rm  $(ELE_ADD)ele_file.md

Foundry.pdf : $(FOU_FILES)
	$(GPP_CMD) $(FOU_ADD)fou_file.md $(FOU_ADD)main.md
	$(PD_CMD) $(FOU_ADD)$@ $(FOU_ADD)fou_file.md
	rm  $(FOU_ADD)fou_file.md

Blacksmithy.pdf : $(BLS_FILES)
	$(GPP_CMD) $(BLS_ADD)bls_file.md $(BLS_ADD)main.md
	$(PD_CMD) $(BLS_ADD)$@ $(BLS_ADD)bls_file.md
	rm  $(BLS_ADD)bls_file.md

Fitting.pdf : $(FIT_FILES)
	$(GPP_CMD) $(FIT_ADD)fit_file.md $(FIT_ADD)main.md
	$(PD_CMD) $(FIT_ADD)$@ $(FIT_ADD)fit_file.md
	rm  $(FIT_ADD)fit_file.md

Welding.pdf : $(WEL_FILES)
	$(GPP_CMD) $(WEL_ADD)wel_file.md $(WEL_ADD)main.md
	$(PD_CMD) $(WEL_ADD)$@ $(WEL_ADD)wel_file.md
	rm  $(WEL_ADD)wel_file.md

Machine.pdf : $(MAC_FILES)
	$(GPP_CMD) $(MAC_ADD)mac_file.md $(MAC_ADD)main.md
	$(PD_CMD) $(MAC_ADD)$@ $(MAC_ADD)mac_file.md
	rm  $(MAC_ADD)mac_file.md

Carpentry.pdf : $(CAR_FILES)
	$(GPP_CMD) $(CAR_ADD)car_file.md $(CAR_ADD)main.md
	$(PD_CMD) $(CAR_ADD)$@ $(CAR_ADD)car_file.md
	rm  $(CAR_ADD)car_file.md

# Clean

.PHONY : clean
clean :
	rm Workshop_file.pdf $(ELE_ADD)Electric.pdf $(FOU_ADD)Foundry.pdf $(BLS_ADD)Blacksmithy.pdf $(FIT_ADD)Fitting.pdf
	rm $(WEL_ADD)Welding.pdf $(MAC_ADD)Machine.pdf $(CAR_ADD)Carpentry.pdf
