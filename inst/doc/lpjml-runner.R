## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  my_params <- tibble(
#    sim_name = c("scenario1", "scenario2"),
#    random_seed = c(42, 404),
#    `param$k_temp` = c(NA, 0.03),
#    new_phenology = c(TRUE, FALSE)
#  )

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  config_details <- write_config(my_params, model_path, sim_path)

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  lpjml_check(config_details, model_path, sim_path)

## ---- eval = FALSE, highlight = TRUE------------------------------------------
#  # run interactively
#  run_details <- run_lpjml(config_details, model_path, sim_path)
#  
#  # OR submit to SLURM
#  submit_details <- submit_lpjml(config_details, model_path, sim_path)

## ----setup, echo = TRUE, eval = FALSE, highlight = TRUE-----------------------
#  library(lpjmlkit)
#  # Why tibble? -> https://r4ds.had.co.nz/tibbles.html
#  # Tibbles also provide a better overview of the data and directly show the type
#  # of each column, which is very important for integer/floating point values.
#  library(tibble)
#  
#  model_path <- "./LPJmL_internal"
#  sim_path <- "./my_runs"
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # create parameter tibble
#  params <- tibble(
#    sim_name = c("spinup", "lu", "pnv"),
#    landuse = c("no", "yes", "no"),
#    # only for demonstration
#    nspinup = c(1000, NA, NA),
#    reservoir = c(FALSE, TRUE, FALSE),
#    startgrid = c(27410, 27410, 27410),
#    river_routing = c(FALSE, FALSE, FALSE),
#    wateruse = c("no", "yes", "no"),
#    const_deposition = c(FALSE, FALSE, TRUE),
#    # run parameter: dependency sets the restart paths to the corresponding
#    #   restart_filename and calculates the execution order
#    dependency = c(
#      NA, "spinup", "spinup"
#    )
#  )
#  
#  # write config files
#  config_details <- write_config(
#    x = params, # pass the defined parameter tibble
#    model_path = model_path,
#    sim_path = sim_path,
#    js_filename = "lpjml.js" # (default) the base config file
#  )
#  
#  # read and view config
#  config_lu <- read_config(
#    filename = paste0(sim_path, "/configurations/config_lu.json") # nolint:absolute_path_linter.
#  )
#  View(config_lu)
#  
#  # check config & LPJmL
#  check_config(
#    x = config_details, # can be filename (vector) or tibble
#    model_path = model_path,
#    sim_path = sim_path
#  )
#  
#  # execute runs sequentially
#  run_details <- run_lpjml(
#    config_details,
#    model_path = model_path,
#    sim_path = sim_path)
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # create parameter tibble
#  params <- tibble(
#    sim_name = c("spinup_oldphen",
#                 "spinup_newphen",
#                 "oldphen",
#                 "old_lu",
#                 "lu_toolbox"),
#    # object oriented like syntax to access nested json elements
#    input.landuse.name = c(
#      NA,
#      NA,
#      NA,
#      NA,
#      "input_toolbox_30arcmin/cftfrac_1500-2017_64bands_f2o.clm"
#    ),
#    nspinup = c(1000, 1000, NA, NA, NA),
#    new_phenology = c(FALSE, TRUE, FALSE, TRUE, TRUE),
#    startgrid = c(27410, 27410, 27410, 27410, 27410),
#    river_routing = c(FALSE, FALSE, FALSE, FALSE, FALSE),
#    dependency = c(NA, NA, "spinup_oldphen", "spinup_newphen", "spinup_newphen")
#  )
#  
#  # write config files
#  config_details <- write_config(params, model_path, sim_path)
#  
#  # check config & LPJmL
#  check_config(config_details, model_path, sim_path)
#  
#  # execute runs sequentially
#  run_details <- run_lpjml(config_details, model_path, sim_path)
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # create parameter tibble
#  params <- tibble(
#    sim_name = c("spinup",
#                 "old_lu",
#                 "lu_toolbox"),
#    input.landuse.name = c(
#      NA,
#      NA,
#      "input_toolbox_30arcmin/cftfrac_1500-2017_64bands_f2o.clm"
#    ),
#    dependency = c(NA, "spinup", "spinup"),
#    # slurm option wtime: analogous to sbatch -wtime defines slurm option
#    #   individually per config, overwrites submit_lpjml argument
#    #   (same for sclass, ntasks, blocking)
#    wtime = c("15:00:00", "3:00:00", "3:00:00")
#  )
#  
#  # write config files
#  config_details <- write_config(
#    x = params,
#    model_path = model_path,
#    sim_path = sim_path,
#    output_list = c("vegc", "soilc", "cftfrac", "pft_harvestc", "irrig"),
#    output_list_timestep = c("annual", "annual", "annual", "annual", "monthly"),
#    output_format = "clm"
#  )
#  
#  # check config & LPJmL
#  check_config(config_details, model_path, sim_path)
#  
#  # submit runs to slurm
#  run_details <- submit_lpjml(
#    x = config_details,
#    model_path = model_path,
#    sim_path = sim_path,
#    group = "open")
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  saveRDS(config_details,
#          paste0(sim_path, "/configurations/config_details.rds")) # nolint:absolute_path_linter.
#  
#  # next time ...
#  config_details <- readRDS(paste0(sim_path,
#                              "/configurations/config_details.rds")) # nolint:absolute_path_linter.

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # use a subset for the rows - in this example you may only want to resubmit the
#  #   transient runs
#  run_details <- submit_lpjml(
#    x = config_details[2:3, ],
#    model_path = model_path,
#    sim_path = sim_path,
#    group = "open")

