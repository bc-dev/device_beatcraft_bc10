
# Superclass
$(call inherit-product, build/target/product/generic.mk)

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    LiveWallpapers \
    MagicSmokeWallpapers \
    VisualizationWallpapers 

# Overrides
PRODUCT_NAME := bc10
PRODUCT_DEVICE := bc10
PRODUCT_MODEL := bc10
PRODUCT_BRAND := bc10
PRODUCT_MANUFACTURER := beatcraft

PRODUCT_LOCALES := ldpi hdpi mdpi ja_JP en_US en_GB fr_FR it_IT es_ES es_US de_DE nl_NL cs_CZ pl_PL zh_TW zh_CN ru_RU ko_KR nb_NO pt_PT pt_BR da_DK el_GR sv_SE tr_TR
