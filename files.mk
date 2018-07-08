EJ1_FILES = $(wildcard Shops/Electric/Job_1/*.md)
EJ2_FILES = $(wildcard Shops/Electric/Job_2/*.md)
EJ3_FILES = $(wildcard Shops/Electric/Job_3/*.md)
ELE_FILES = $(EJ1_FILES) $(EJ2_FILES) $(EJ3_FILES) $(wildcard Shops/Electric/*.md)

FOJ1_FILES = $(wildcard Shops/Foundry/Job_1/*.md)
FOJ2_FILES = $(wildcard Shops/Foundry/Job_2/*.md)
FOJ3_FILES = $(wildcard Shops/Foundry/Job_3/*.md)
FOU_FILES = $(FOJ1_FILES) $(FOJ2_FILES) $(FOJ3_FILES) $(wildcard Shops/Foundry/*.md)

BSJ1_FILES = $(wildcard Shops/Blacksmithy/Job_1/*.md)
BLS_FILES = $(BSJ1_FILES)  $(wildcard Shops/Blacksmithy/*.md)

FIJ1_FILES = $(wildcard Shops/Fitting/Job_1/*.md)
FIJ2_FILES = $(wildcard Shops/Fitting/Job_2/*.md)
FIJ3_FILES = $(wildcard Shops/Fitting/Job_3/*.md)
FIT_FILES = $(FIJ1_FILES) $(FIJ2_FILES) $(FIJ3_FILES) $(wildcard Shops/Fitting/*.md)

WEJ1_FILES = $(wildcard Shops/Welding/Job_1/*.md)
WEJ2_FILES = $(wildcard Shops/Welding/Job_2/*.md)
WEJ3_FILES = $(wildcard Shops/Welding/Job_3/*.md)
WEL_FILES = $(WEJ1_FILES) $(WEJ2_FILES) $(WEJ3_FILES) $(wildcard Shops/Welding/*.md)

CAJ1_FILES = $(wildcard Shops/Carpentry/Job_1/*.md)
CAJ2_FILES = $(wildcard Shops/Carpentry/Job_2/*.md)
CAR_FILES = $(CAJ1_FILES) $(CAJ2_FILES) $(wildcard Shops/Carpentry/*.md)

MAJ1_FILES = $(wildcard Shops/Machine/Job_1/*.md)
MAJ2_FILES = $(wildcard Shops/Machine/Job_2/*.md)
MAC_FILES = $(MAJ1_FILES) $(MAJ2_FILES) $(wildcard Shops/Machine/*.md)

