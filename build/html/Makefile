# Including files

include ../../files.mk
include ../../macro.mk

# Creating Workshop file html

Workshop_file.html : $(ELE_FILES) $(FOU_FILES) $(BLS_FILES) $(FIT_FILES) $(WEL_FILES) $(MAC_FILES) $(CAR_FILES) ht_master.md
		$(GPP_CMD) training.md ht_master.md
		$(PD_CMD) $@ training.md
		rm training.md
		$(MSG)"the directory $(HTML_ADD).\n"

# All htmls

.PHONY : html
html : Workshop_file.html Electric.html Foundry.html Blacksmithy.html Fitting.html Welding.html Machine.html Carpentry.html

# Creating specific shop's html file

Electric.html : $(ELE_FILES)
		$(GPP_CMD) $(ELE_ADD)ele_file.md $(ELE_ADD)ht_main.md
		$(PD_CMD) $@ $(ELE_ADD)ele_file.md
		rm  $(ELE_ADD)ele_file.md
		$(MSG)"$(HTML_ADD).\n"

Foundry.html : $(FOU_FILES)
		$(GPP_CMD) $(FOU_ADD)fou_file.md $(FOU_ADD)ht_main.md
		$(PD_CMD) $@ $(FOU_ADD)fou_file.md
		rm  $(FOU_ADD)fou_file.md
		$(MSG)"$(HTML_ADD).\n"

Blacksmithy.html : $(BLS_FILES)
		$(GPP_CMD) $(BLS_ADD)bls_file.md $(BLS_ADD)ht_main.md
		$(PD_CMD) $@ $(BLS_ADD)bls_file.md
		rm  $(BLS_ADD)bls_file.md
		$(MSG)"$(HTML_ADD).\n"

Fitting.html : $(FIT_FILES)
		$(GPP_CMD) $(FIT_ADD)fit_file.md $(FIT_ADD)ht_main.md
		$(PD_CMD) $@ $(FIT_ADD)fit_file.md
		rm  $(FIT_ADD)fit_file.md
		$(MSG)"$(HTML_ADD).\n"

Welding.html : $(WEL_FILES)
		$(GPP_CMD) $(WEL_ADD)wel_file.md $(WEL_ADD)ht_main.md
		$(PD_CMD) $@ $(WEL_ADD)wel_file.md
		rm  $(WEL_ADD)wel_file.md
		$(MSG)"$(HTML_ADD).\n"

Machine.html : $(MAC_FILES)
		$(GPP_CMD) $(MAC_ADD)mac_file.md $(MAC_ADD)ht_main.md
		$(PD_CMD) $@ $(MAC_ADD)mac_file.md
		rm  $(MAC_ADD)mac_file.md
		$(MSG)"$(HTML_ADD).\n"

Carpentry.html : $(CAR_FILES)
		$(GPP_CMD) $(CAR_ADD)car_file.md $(CAR_ADD)ht_main.md
		$(PD_CMD) $@ $(CAR_ADD)car_file.md
		rm  $(CAR_ADD)car_file.md
		$(MSG)"$(HTML_ADD).\n"

.PHONY : clean_html
clean_html :
	rm *.html

