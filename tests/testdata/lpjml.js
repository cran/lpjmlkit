{
  "sim_name" : "LPJmL Run",
  "sim_id" : "lpjml",
  "version" : "5.3",
  "random_prec" : true,
  "random_seed" : 2,
  "radiation" : "radiation",
  "fire" : "fire",
  "fdi" : "nesterov",
  "firewood" : false,
  "new_phenology" : true,
  "new_trf" : false,
  "river_routing" : true,
  "extflow" : false,
  "permafrost" : true,
  "johansen" : true,
  "with_nitrogen" : "lim",
  "store_climate" : true,
  "const_climate" : false,
  "shuffle_climate" : true,
  "const_deposition" : false,
  "fix_climate" : false,
  "fix_landuse" : false,
  "equilsoil" : true,
  "population" : false,
  "landuse" : "no",
  "reservoir" : false,
  "wateruse" : "no",
  "prescribe_burntarea" : false,
  "prescribe_landcover" : "no_landcover",
  "sowing_date_option" : "fixed_sdate",
  "sdate_fixyear" : 1970,
  "intercrop" : true,
  "residue_treatment" : "fixed_residue_remove",
  "residues_fire" : false,
  "irrigation" : "lim",
  "laimax_interpolate" : "laimax_par",
  "tillage_type" : "all",
  "till_startyear" : 1850,
  "black_fallow" : false,
  "pft_residue" : "temperate cereals",
  "no_ndeposition" : false,
  "rw_manage" : false,
  "laimax" : 5,
  "fertilizer_input" : "yes",
  "manure_input" : true,
  "fix_fertilization" : false,
  "others_to_crop" : true,
  "grazing" : "default",
  "cft_temp" : "temperate cereals",
  "cft_tropic" : "maize",
  "grassonly" : false,
  "istimber" : true,
  "grassland_fixed_pft" : false,
  "grass_harvest_options" : false,
  "mowing_days" : [152, 335],
  "crop_resp_fix" : false,
  "crop_phu_option" : "new",
  "cropsheatfrost" : false,
  "double_harvest" : true,
"param" :
{
  "k_litter10" : 0.3,
  "k_soil10" : { "fast" : 0.03, "slow": 0.001},
  "init_soiln" : { "fast" : 5500.0, "slow": 5500.0},
  "maxsnowpack": 20000.0,
  "soildepth_evap" : 300.0,
  "soil_infil" : 2.0,
  "co2_p" : 278.0,
  "k" : 0.0548,
  "theta" : 0.9,
  "alphac3" : 0.08,
  "alphac4" : 0.053,
  "r_growth" : 0.25,
  "GM" : 2.41,
  "ALPHAM" : 1.485,
  "ko25" : 3.0e4,
  "kc25" : 30.0,
  "atmfrac" : 0.6,
  "fastfrac" : 0.98,
  "bioturbate" : 0.5,
  "veg_equil_year" : 2400,
  "k_max": 0.10,
  "fpc_tree_max" : 0.95,
  "temp_response" : 56.02,
  "percthres" : 1.0,
  "k_2": 0.02,
  "p" : 25,
  "n0" : 7.15,
  "k_temp" : 0.02,
  "min_c_bnf" : 20,
  "par_sink_limit" : 0.2,
  "q_ash" : 0.45,
  "sapwood_recovery" : 0.3,
  "T_m" : 15.0,
  "T_0" : -25.0,
  "T_r" : 15.0,
  "lsuha" : 0.0,
  "k_mort" : 0.2,
  "residue_rate": 200,
  "residue_pool" : 100,
  "residue_cn": 20,
  "residue_fbg": 0.25,
  "residue_frac" : 0.95,
  "manure_cn": 14.5,
  "fertilizer_rate" : 10,
  "manure_rate" : 0,
  "mixing_efficiency" : 0.9,
  "aprec_lim" : 900,
  "irrig_threshold_c3_dry" : 0.95,
  "irrig_threshold_c3_humid" : 0.95,
  "irrig_threshold_c4" : 0.95,
  "irrig_threshold_rice" : 1.0,
  "irrig_soilfrac" : 1.0,
  "canal_conveyance_eff_sand" : 0.7,
  "canal_conveyance_eff_loam" : 0.75,
  "canal_conveyance_eff_clay" : 0.8,
  "pipe_conveyance_eff" : 0.95,
  "saturation_level_surf" : 1.0,
  "saturation_level_sprink" : 0.55,
  "saturation_level_drip" : 0.05,
  "drip_evap_reduction" : 0.6,
  "nfert_split" : 0,
  "nfert_split_frac" : 0.2,
  "nfert_no3_frac" : 0.5,
  "nmanure_nh4_frac" : 0.666667,
  "residues_in_soil" : 0.3,
  "fburnt" : 1.0,
  "ftimber" : 0.76,
  "harvest_fast_frac" : 0.34,
  "product_turnover" : { "fast" : 0.1, "slow" : 0.01},
  "esoil_reduction" : 0.0,
  "rw_buffer_max" : 0.0,
  "frac_ro_stored" : 0.0,
  "rw_irrig_thres" : 0.0,
  "soil_infil_rw" : 2.0,
  "yield_gap_bridge" : 0.0,
  "allocation_threshold" : 35.0,
  "hfrac2" : 2500.0,
  "firedura" : -11.06,
  "hum_ign" : -0.50,
  "fire_intens" : 0.000001,
  "rootreduction" : 0.5,
  "phen_limit" : 0.5,
  "nfrac_grassharvest" : 0.5,
  "nfrac_grazing" : 0.5
},
"soildepth" :
[
  200.0,
  300.0,
  500.0,
  1000.0,
  1000.0,
  10000.0
],
"fbd_fac" : [1.0, 1.2, 1.4, 0.0],
"fbd_int" : [1, 1, 1, 0],
"pftpar" : [],
"soilpar" :
[
{ "id" : 0, "name" : "clay", "Ks" : 3.5, "Sf" : 243.0, "sand" : 0.22, "silt" : 0.20, "clay": 0.58, "hsg" : 1, "tdiff_0" : 0.572, "tdiff_15" : 0.571, "tdiff_100" : 0.555, "cond_pwp" : 1.388, "cond_100" : 1.719, "cond_100_ice" : 3.233, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15},
{ "id" : 1, "name" : "silty clay", "Ks" : 4.8, "Sf" : 169.0, "sand" : 0.06, "silt" : 0.47, "clay": 0.47, "hsg" : 2, "tdiff_0" : 0.502, "tdiff_15" : 0.503, "tdiff_100" : 0.491, "cond_pwp" : 1.177, "cond_100" : 1.516, "cond_100_ice" : 2.853, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27,"c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15},
{ "id" : 2, "name" : "sandy clay", "Ks" : 26.0, "Sf" : 51.0, "sand" : 0.52, "silt" : 0.06, "clay": 0.42, "hsg" : 4, "tdiff_0" : 0.785, "tdiff_15" : 0.791, "tdiff_100" : 0.799, "cond_pwp" : 1.720, "cond_100" : 2.347, "cond_100_ice" : 4.060, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.55, "b_nit": 1.7,"c_nit": -0.007, "d_nit": 3.22,"cn_ratio": 15},
{ "id" : 3, "name" : "clay loam", "Ks" : 8.8, "Sf" : 139.0, "sand" : 0.32, "silt" : 0.34, "clay": 0.34, "hsg" : 3, "tdiff_0" : 0.650, "tdiff_15" : 0.656, "tdiff_100" : 0.653, "cond_pwp" : 1.369, "cond_100" : 1.967, "cond_100_ice" : 3.685, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15},
{ "id" : 4, "name" : "silty clay loam", "Ks" : 7.3, "Sf" : 324.0, "sand" : 0.10, "silt" : 0.56, "clay": 0.34, "hsg" : 2, "tdiff_0" : 0.556, "tdiff_15" : 0.557, "tdiff_100" : 0.542, "cond_pwp" : 1.270, "cond_100" : 1.675, "cond_100_ice" : 3.134, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15},
{ "id" : 5, "name" : "sandy clay loam", "Ks" : 16.0, "Sf" : 72.0, "sand" : 0.58, "silt" : 0.15, "clay": 0.27, "hsg" : 1, "tdiff_0" : 0.780, "tdiff_15" : 0.808, "tdiff_100" : 0.867, "cond_pwp" : 1.498, "cond_100" : 2.527, "cond_100_ice" : 4.360, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.55, "b_nit": 1.7, "c_nit": -0.007, "d_nit": 3.22,"cn_ratio": 15},
{ "id" : 6, "name" : "loam", "Ks" : 12.2, "Sf" : 192.0, "sand" : 0.43, "silt" : 0.39, "clay": 0.18, "hsg" : 4, "tdiff_0" : 0.701, "tdiff_15" : 0.740, "tdiff_100" : 0.797, "cond_pwp" : 1.276, "cond_100" : 2.340, "cond_100_ice" : 4.233, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15},
{ "id" : 7, "name" : "silt loam", "Ks" : 10.1, "Sf" : 409.0, "sand" : 0.17, "silt" : 0.70, "clay": 0.13, "hsg" : 2, "tdiff_0" : 0.637, "tdiff_15" : 0.657, "tdiff_100" : 0.661, "cond_pwp" : 1.219, "cond_100" : 1.999, "cond_100_ice" : 3.803, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15},
{ "id" : 8, "name" : "sandy loam", "Ks" : 18.8, "Sf" : 77.0, "sand" : 0.58, "silt" : 0.32, "clay": 0.10, "hsg" : 2, "tdiff_0" : 0.640, "tdiff_15" : 0.713, "tdiff_100" : 0.863, "cond_pwp" : 1.053, "cond_100" : 2.530, "cond_100_ice" : 4.547, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.55, "b_nit": 1.7, "c_nit": -0.007, "d_nit": 3.22,"cn_ratio": 15},
{ "id" : 9, "name" : "silt", "Ks" : 10.1, "Sf" : 409.0, "sand" : 0.10, "silt" : 0.60, "clay": 0.30, "hsg" : 2, "tdiff_0" : 0.637, "tdiff_15" : 0.657, "tdiff_100" : 0.661, "cond_pwp" : 1.219, "cond_100" : 1.999, "cond_100_ice" : 3.803, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84, "cn_ratio": 15},
{ "id" : 10, "name" : "loamy sand", "Ks" : 50.7, "Sf" : 20.0, "sand" : 0.82, "silt" : 0.12, "clay": 0.06, "hsg" : 2, "tdiff_0" : 0.403, "tdiff_15" : 0.529, "tdiff_100" : 0.850, "cond_pwp" : 0.601, "cond_100" : 2.706, "cond_100_ice" : 4.778, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.55, "b_nit": 1.7, "c_nit": -0.007, "d_nit": 3.22,"cn_ratio": 15},
{ "id" : 11, "name" : "sand", "Ks" : 167.8, "Sf" : 39.0, "sand" : 0.92, "silt" : 0.05, "clay": 0.03, "hsg" : 2, "tdiff_0" : 0.201, "tdiff_15" : 0.196, "tdiff_100" : 0.896, "cond_pwp" : 0.303, "cond_100" : 3.431, "cond_100_ice" : 5.423, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.55, "b_nit": 1.7, "c_nit": -0.007, "d_nit": 3.22,"cn_ratio": 15},
{ "id" : 12, "name" : "clay (light)", "Ks" : 3.5, "Sf" : 243.0, "sand" : 0.24, "silt" : 0.28, "clay": 0.48, "hsg" : 1, "tdiff_0" : 0.572, "tdiff_15" : 0.571, "tdiff_100" : 0.555, "cond_pwp" : 1.388, "cond_100" : 1.719, "cond_100_ice" : 3.233, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15},
{ "id" : 13, "name" : "rock and ice", "Ks" : 0.1, "Sf" : 1.0, "sand" : 0.99, "silt" : 0.00, "clay": 0.01, "hsg" : 4, "tdiff_0" : 4.137, "tdiff_15" : 4.127, "tdiff_100" : 4.089, "cond_pwp" : 8.768, "cond_100" : 8.657, "cond_100_ice" : 8.727, "denit_rate": 6, "a_denit": -73.5, "b_denit": 0.4804, "anion_excl": 0.4, "nitvol_temp_factor": 0.41, "vol_cation_exchange": 0.15, "denit_water_threshold": 2, "a_nit": 0.6, "b_nit": 1.27, "c_nit": 0.0012, "d_nit": 2.84,"cn_ratio": 15}
],
"laimaxmap" : ["temperate cereals","rice", "maize", "tropical cereals", "pulses",
               "temperate roots", "tropical roots", "oil crops sunflower",
               "oil crops soybean", "oil crops groundnut", "oil crops rapeseed",
               "sugarcane"],
"compress" : 0,
"missing_value" : -1e32,
"pft_index" : "npft",
"layer_index" : "layer",
"compress_cmd" : "gzip -f",
"compress_suffix" : ".gz",
"csv_delimit" : ",",
"outputvar": [
  {
    "id": 0,
    "name": "grid",
    "timestep": "annual",
    "var": "soil",
    "descr": "coordinates",
    "unit": "degree",
    "scale": 1.0,
    "offset": 0.0
  },
  {
    "id": 21,
    "name": "irrig",
    "timestep": "monthly",
    "var": "irrig",
    "descr": "irrigation",
    "unit": "mm/month",
    "scale": 1.0,
    "offset": 0.0
  }
],
"inpath" : "/p/projects/lpjml/input/historical",
"soilmap" : [null,"clay", "silty clay", "sandy clay", "clay loam", "silty clay loam",
             "sandy clay loam", "loam", "silt loam", "sandy loam", "silt",
             "loamy sand", "sand", "rock and ice"],
"landusemap" : ["temperate cereals","rice", "maize", "tropical cereals", "pulses",
                "temperate roots", "tropical roots", "oil crops sunflower",
                "oil crops soybean", "oil crops groundnut", "oil crops rapeseed",
                "sugarcane","others","grassland","biomass grass","biomass tree"],
"fertilizermap" : ["temperate cereals","rice", "maize", "tropical cereals", "pulses",
                   "temperate roots", "tropical roots", "oil crops sunflower",
                   "oil crops soybean", "oil crops groundnut", "oil crops rapeseed",
                   "sugarcane","others","grassland","biomass grass","biomass tree"],
"cftmap" : ["temperate cereals","rice", "maize", "tropical cereals", "pulses",
            "temperate roots", "tropical roots", "oil crops sunflower",
            "oil crops soybean", "oil crops groundnut", "oil crops rapeseed",
            "sugarcane"],
"input" :
{
  "soil" : { "fmt" : "meta", "name" : "input_VERSION2/soil.descr"},
  "coord" : { "fmt" : "clm", "name" : "input_VERSION2/grid.bin"},
  "countrycode" : { "fmt" : "clm", "name" : "input_VERSION2/cow_full_2018.bin"},
  "no3deposition" : { "fmt" : "clm", "name" : "input_VERSION2/no3_deposition_rcp8p5.clm"},
  "nh4deposition" : { "fmt" : "clm", "name" : "input_VERSION2/nh4_deposition_rcp8p5.clm"},
  "soilpH" : { "fmt" : "clm", "name" : "input_VERSION2/soil_ph.clm"},
  "landuse" : { "fmt" : "clm", "name" : "/p/projects/open/Jannes/inputgen/input_CLM2/cftfrac_fullhist_1500-2017_64bands_f2o.clm"},
  "fertilizer_nr" : { "fmt" :"clm", "name" : "input_VERSION3/fertilizer_luh2v2_1900-2015_32bands.clm"},
  "manure_nr" : { "fmt" : "clm", "name" : "input_VERSION3/manure_zhang17_1860-2014_32bands_clm2.clm"},
  "with_tillage" : { "fmt" : "clm", "name" : "input_VERSION3/lpj_tillage_CA_1973-2010.clm"},
  "residue_on_field" : { "fmt" : "clm", "name" : "/p/projects/lpjml/input/MADRAT/residues_madrat_1850-2015_16bands.clm"},
  "sdate" : {"fmt" : 1, "name" : "/p/projects/landuse/users/cmueller/GGCMI/crop_calendar/GGCMI_CTWN_planting_v1.25.clm2"},
  "grassland_fixed_pft" : { "fmt" : "raw", "name" : "/p/projects/landuse/users/rolinski/Newinput/scenario_MO0.bin"},
  "grass_harvest_options" : { "fmt" : "raw", "name": "/p/projects/landuse/users/rolinski/Newinput/scenario_MO2.bin"},
   "sowing_ag_tree_rf" : { "fmt" : "cdf", "var" : "planting day", "name" : "/p/projects/landuse/users/cmueller/GGCMI/crop_calendar/Cotton_rf_growing_season_dates_v1.25.nc4"},
  "harvest_ag_tree_rf" : { "fmt" : "cdf", "var" : "harvest day", "name" : "/p/projects/landuse/users/cmueller/GGCMI/crop_calendar/Cotton_rf_growing_season_dates_v1.25.nc4"},
  "sowing_ag_tree_ir" : { "fmt" : "cdf", "var" : "planting day", "name" : "/p/projects/landuse/users/cmueller/GGCMI/crop_calendar/Cotton_ir_growing_season_dates_v1.25.nc4"},
  "harvest_ag_tree_ir" : { "fmt" : "cdf", "var" : "harvest day", "name" : "/p/projects/landuse/users/cmueller/GGCMI/crop_calendar/Cotton_ir_growing_season_dates_v1.25.nc4"},
  "lakes" : { "fmt" : "meta", "name" : "input_VERSION2/glwd_lakes_and_rivers.descr"},
  "drainage" : { "fmt" : "clm", "name" : "input_VERSION2/drainagestn.bin"},
  "neighb_irrig" : { "fmt" : "clm", "name" : "input_VERSION2/neighb_irrig_stn.bin"},
  "elevation" : { "fmt" : "clm", "name" : "input_VERSION2/elevation.bin"},
  "reservoir" : { "fmt" : "clm", "name" : "input_VERSION2/reservoir_info_grand5.bin"},
  "temp" : { "fmt" : "clm", "name" : "CRUDATA_TS3_23/cru_ts3.23.1901.2014.tmp.dat.clm"},
  "prec" : { "fmt" : "clm", "name" : "CRUDATA_TS3_23/gpcc_v7_cruts3_23_precip_1901_2013.clm"},
  "lwnet" : { "fmt" : "clm", "name" : "input_VERSION2/lwnet_erainterim_1901-2011.clm"},
  "swdown" : { "fmt" : "clm", "name" : "input_VERSION2/swdown_erainterim_1901-2011.clm"},
  "cloud": { "fmt" : "clm", "name" : "CRUDATA_TS3_23/cru_ts3.23.1901.2014.cld.dat.clm"},
  "wind": { "fmt" : "clm", "name" : "input_VERSION2/mwindspeed_1860-2100_67420.clm"},
  "tamp": { "fmt" : "clm", "name" : "CRUDATA_TS3_23/cru_ts3.23.1901.2014.dtr.dat.clm"},
  "lightning" : { "fmt" : "clm", "name" : "input_VERSION2/mlightning.clm"},
  "human_ignition": { "fmt" : "clm", "name" : "input_VERSION2/human_ignition.clm"},
  "popdens" : { "fmt" : "clm", "name" : "input_VERSION2/popdens_HYDE3_1901_2011_bi.clm"},
  "burntarea" : { "fmt" : "clm", "name" : "/data/biosx/mforkel/input_new/GFED_CNFDB_ALFDB_Interp.BA.360.720.1901.2012.30days.clm"},
  "landcover": { "fmt" : "clm", "name" : "/data/biosx/mforkel/input_new/landcover_synmap_koeppen_vcf_newPFT_forLPJ_20130910.clm"},
  "co2" : { "fmt" : "txt", "name" : "input_VERSION2/co2_1841-2012.dat"},
  "wetdays" : { "fmt" : "clm", "name" : "CRUDATA_TS3_23/gpcc_v7_cruts3_23_wet_1901_2013.clm"},
  "wateruse" : { "fmt" : "clm", "name" : "input_VERSION2/wateruse_1900_2000.bin" }
},
  "grid_scaled" : false,
  "float_grid" : false,
  "crop_index" : "temperate cereals",
  "crop_irrigation" : false,
  "output" :
  [
    { "id" : "grid", "file" : { "fmt" : "clm", "name" : "output/grid.clm"}}
  ],
  "startgrid" : "all",
  "endgrid" : -1,
  "nspinup" : 499,
  "nspinyear" : 30,
  "firstyear": 1901,
  "lastyear" : 1901,
  "restart" : false,
  "outputyear" : -28099,
  "checkpoint_filename": "restart.lpj", 
  "restart_filename" : "restart.lpj",
  "write_restart" : true,
  "write_restart_filename" : "restart/restart_1840_nv_stdfire.lpj",
  "restart_year": 1840,
  "sim_githash": ""
}
