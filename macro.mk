# Macros

ELE_ADD = ../../Shops/Electric/
FOU_ADD = ../../Shops/Foundry/
BLS_ADD = ../../Shops/Blacksmithy/
FIT_ADD = ../../Shops/Fitting/
WEL_ADD = ../../Shops/Welding/
MAC_ADD = ../../Shops/Machine/
CAR_ADD = ../../Shops/Carpentry/
PDF_ADD = build/pdf/
HTML_ADD = build/html/
GPP_CMD = gpp -o
PD_CMD = pandoc -s -o
PDF_CMD = $@ -C build/pdf
HTML_CMD = $@ -C build/html
SHOPS = Blacksmithy Electric Machine Foundry Fitting Welding Carpentry
SHOP_PDF = $(patsubst %, %.pdf, $(SHOPS))
SHOP_HTML = $(patsubst %, %.html, $(SHOPS))
MSG = @ echo "\n You can find $@ in "

