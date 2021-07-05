# Overlays
PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    vendor/extra/CarrierSettings/overlay

DEVICE_PACKAGE_OVERLAYS += \
    vendor/extra/CarrierSettings/overlay/common

# CarrierSettings, replace CarrierConfig
PRODUCT_PACKAGES += \
    CarrierSettings

#
# Carrier configs by Google, parsed by CarrierSettings
#
# Carrier List
PRODUCT_PACKAGES += \
    carrier_list.pb

# Defaults
PRODUCT_PACKAGES += \
    default.pb

# Carriers Databases
PRODUCT_PACKAGES += \
    a1_at.pb \
    airtel_in.pb \
    apt_tw.pb \
    att5g_us.pb \
    att_us.pb \
    bell_ca.pb \
    bluegrass_us.pb \
    boost_us.pb \
    boosttmo_us.pb \
    consumercellulartmo_us.pb \
    bouygues_fr.pb \
    btb_gb.pb \
    btc_gb.pb \
    cellcom_us.pb \
    cellcommno_us.pb \
    cht_tw.pb \
    congstar_de.pb \
    cricket5g_us.pb \
    cricket_us.pb \
    cspire_us.pb \
    docomo_jp.pb \
    ee_gb.pb \
    eplus_de.pb \
    esn_gb.pb \
    fet_tw.pb \
    fi_us.pb \
    fido_ca.pb \
    firstnet_us.pb \
    firstnetpacific2_us.pb \
    firstnetpacific_us.pb \
    fizz_ca.pb \
    free_fr.pb \
    freedommobile_ca.pb \
    gamma_gb.pb \
    h3_at.pb \
    h3_gb.pb \
    h3_se.pb \
    halebop_se.pb \
    homobile_it.pb \
    idea_in.pb \
    idmobile_gb.pb \
    kddi_jp.pb \
    kddimvno_jp.pb \
    kena_it.pb \
    koodo_ca.pb \
    kpn_nl.pb \
    luckymobile_ca.pb \
    movistar_es.pb \
    o2_de.pb \
    o2postpaid_gb.pb \
    o2prepaid_de.pb \
    o2prepaid_gb.pb \
    optus_au.pb \
    orange_es.pb \
    orange_fr.pb \
    pcmobilebell_ca.pb \
    povo_jp.pb \
    rakuten_jp.pb \
    rjio_in.pb \
    rogers_ca.pb \
    sfr_fr.pb \
    shaw_ca.pb \
    redpockettmo_us.pb \
    simple_us.pb \
    tmomvno_us.pb \
    singtel_sg.pb \
    smarty_gb.pb \
    softbank_jp.pb \
    solomobile_ca.pb \
    spectrum_us.pb \
    sprint_us.pb \
    sprintprepaid_us.pb \
    sprintwholesale_us.pb \
    starhub_sg.pb \
    stc_sa.pb \
    sunrise_ch.pb \
    swisscom_ch.pb \
    swisscom_li.pb \
    tbaytel_ca.pb \
    tdc_dk.pb \
    tele2_se.pb \
    telekom_de.pb \
    telenor_dk.pb \
    telenor_no.pb \
    telenor_se.pb \
    telia_dk.pb \
    telia_no.pb \
    telia_se.pb \
    telstra_au.pb \
    telus_ca.pb \
    three_dk.pb \
    tim_it.pb \
    tmobile_at.pb \
    tmobile_cz.pb \
    tmobile_nl.pb \
    tmobile_us.pb \
    tracfonetmo_us.pb \
    tracfoneverizon_us.pb \
    tstar_tw.pb \
    twm_tw.pb \
    uscc_us.pb \
    verizon_us.pb \
    verymobile_it.pb \
    videotron_ca.pb \
    virgin_ca.pb \
    virgin_gb.pb \
    virgin_us.pb \
    visible_us.pb \
    vodafone_au.pb \
    vodafone_cz.pb \
    vodafone_de.pb \
    vodafone_es.pb \
    vodafone_gb.pb \
    vodafone_ie.pb \
    vodafone_in.pb \
    vodafone_it.pb \
    vodafone_nl.pb \
    vodafone_tr.pb \
    windtre_it.pb \
    xfinity_us.pb

# Other countries
PRODUCT_PACKAGES += \
    others.pb
