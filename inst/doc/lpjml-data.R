## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Read monthly runoff with meta file.
#  runoff <- read_io("./output/mrunoff.bin.json")

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Read monthly runoff data with header.
#  runoff <- read_io("./output/mrunoff.clm",
#                   # If the clm version is lower than 4 set nbands and nstep
#                   # manually so that month dimension is recognized correctly.
#                   nbands = 1,
#                   nstep = 12,
#                   # Useful additional information that is not needed to read the
#                   # Data.
#                   variable = "runoff",
#                   descr = "monthly runoff",
#                   unit = "mm/month")

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Read monthly runoff raw data.
#  runoff <- read_io("./output/mrunoff.bin",
#                   # Specify all meta data if they differ from the function
#                   # default values.
#                   ...)

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  runoff$data
#  #     , , band = 1
#  #
#  #          time
#  # cell       1901-01-31    1901-02-28    1901-03-31    1901-04-30
#  #   0      2.427786e+02  1.265680e+02  2.279087e+02  2.027685e+02
#  #   1      4.189225e-14  1.032507e-16  0.000000e+00  0.000000e+00
#  #   2      3.860512e-14  0.000000e+00  0.000000e+00  0.000000e+00
#  #   3      0.000000e+00  0.000000e+00  0.000000e+00  0.000000e+00
#  #   4      0.000000e+00  0.000000e+00  0.000000e+00  0.000000e+00
#  #   5      0.000000e+00  0.000000e+00  0.000000e+00  0.000000e+00

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  runoff$meta
#  # $sim_name "lu_cf"
#  # $source "LPJmL C Version 5.3.001"
#  # $history "./LPJmL_internal/bin/lpjml ./configurations/config_lu_cf.json"
#  # $variable "runoff"
#  # $descr "monthly runoff"
#  # $unit "mm/month"
#  # $nbands 1
#  # $nyear 111
#  # $firstyear 1901
#  # $lastyear 2011
#  # $nstep 12
#  # $timestep 1
#  # $ncell 67420
#  # $firstcell 0
#  # $cellsize_lon 0.5
#  # $cellsize_lat 0.5
#  # $datatype "float"
#  # $scalar 1
#  # $order "cellseq"
#  # $bigendian FALSE
#  # $format "raw"
#  # $filename "runoff.bin"

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Self print; also via print(runoff).
#  runoff
#  # $meta |>
#  #   .$sim_name "lu_cf"
#  #   .$variable "runoff"
#  #   .$descr "monthly runoff"
#  #   .$unit "mm/month"
#  #   .$nbands 1
#  #   .$nyear 111
#  #   .$nstep 12
#  #   .$timestep 1
#  #   .$ncell 67420
#  #   .$cellsize_lon 0.5
#  #   .$cellsize_lat 0.5
#  # Note: not printing all meta data, use $meta to get all.
#  # $data |>
#  #   dimnames() |>
#  #     .$cell  "0" "1" "2" "3" ... "67419"
#  #     .$time  ""1901-01-31" "1901-02-28" "1901-03-31" "1901-04-30" ... "2011-12-31"
#  #     .$band  "1"
#  # $summary()
#  #        1
#  #  Min.   :   0.0000
#  #  1st Qu.:   0.0619
#  #  Median :   4.4320
#  #  Mean   :  28.7658
#  #  3rd Qu.:  27.5627
#  #  Max.   :2840.9602
#  # Note: summary is not weighted by grid area.
#  
#  # Return the dimension length of $data array; dimnames function is also available.
#  dim(runoff)
#  #  cell  time  band
#  # 67420  1332     1
#  
#  # Plot as maps or time series, depending on the dimensions.
#  plot(runoff)

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Object- oriented (R6 class) notation (assigning grid directly to runoff)
#  runoff$add_grid()
#  
#  # Common R notation (overwriting the original object)
#  runoff <- add_grid(runoff)
#  
#  # Use the read_io arguments if a grid file cannot be detected automatically.
#  runoff <- add_grid(runoff, "./output/grid.clm")

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Transform into lon and lat dimensions. If add_grid has not been executed
#  #   before it is called implicitly.
#  runoff <- transform(runoff, to = "lon_lat")
#  runoff
#  # [...]
#  # $data |>
#  #   dimnames() |>
#  #     .$lat  "-55.75" "-55.25" "-54.75" "-54.25" ... "83.75"
#  #     .$lon  "-179.75" "-179.25" "-178.75" "-178.25" ... "179.75"
#  #     .$time  "1901-01-31" "1901-02-28" "1901-03-31" "1901-04-30" ... "2011-12-31"
#  #     .$band  "1"
#  # [...]
#  
#  # Transform into year and month dimensions (day not available for monthly
#  #   runoff)
#  runoff <- transform(runoff, to = "year_month_day")
#  runoff
#  # [...]
#  # $data |>
#  #   dimnames() |>
#  #     .$lat  "-55.75" "-55.25" "-54.75" "-54.25" ... "83.75"
#  #     .$lon  "-179.75" "-179.25" "-178.75" "-178.25" ... "179.75"
#  #     .$month  "1" "2" "3" "4" ... "12"
#  #     .$year  "1901" "1902" "1903" "1904" ... "2011"
#  #     .$band  "1"
#  # [...]
#  
#  # Transform back to original dimensions.
#  runoff <- transform(runoff, to = c("cell", "time"))
#  runoff
#  # [...]
#  # $data |>
#  #   dimnames() |>
#  #     .$cell  "0" "1" "2" "3" ... "67419"
#  #     .$time  "1901-01-31" "1901-02-28" "1901-03-31" "1901-04-30" ... "2100-12-31"
#  #     .$band  "1"
#  # [...]

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Subset by dimnames (character string).
#  runoff <- subset(runoff, time = "1991-05-31")
#  runoff
#  # $meta |>
#  #   .$nyear 1
#  #   .$ncell 67420
#  #   .$subset TRUE
#  # [...]
#  # Note: not printing all meta data, use $meta to get all.
#  # $data |>
#  #   dimnames() |>
#  #     .$cell  "0" "1" "2" "3" ... "67419"
#  #     .$time  "1991-05-31"
#  #     .$band  "1"
#  # [...]
#  
#  # Subset by indices
#  runoff <- subset(runoff, cell = 28697:28700)
#  runoff
#  # $meta |>
#  #   .$nyear 1
#  #   .$ncell 4
#  #   .$subset TRUE
#  # [...]
#  # Note: not printing all meta data, use $meta to get all.
#  # $data |>
#  #   dimnames() |>
#  #     .$cell  "28696" "28697" "28698" "28699"
#  #     .$time  "1991-05-31"
#  #     .$band  "1"
#  # [...]

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Export as an array with subset of first 6 time steps and aggregation along
#  #   the dimension cell (mean).
#  as_array(runoff,
#           subset = list(time = 1:6),
#           aggregate = list(cell = mean))
#  #             band
#  # time                1
#  #   1901-01-31 19.49611
#  #   1901-02-28 20.28368
#  #   1901-03-31 27.93595
#  #   1901-04-30 36.90505
#  #   1901-05-31 39.38885
#  #   1901-06-30 32.80252

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Export as a tibble with subset of first 6 time steps
#  as_tibble(runoff, subset = list(time = 1:6))
#  # # A tibble: 404,520 × 4
#  #    cell  time       band  value
#  #    <fct> <fct>      <fct> <dbl>
#  #  1 0     1901-01-31 1      184.
#  #  2 1     1901-01-31 1        0
#  #  3 2     1901-01-31 1        0
#  #  4 3     1901-01-31 1        0
#  #  5 4     1901-01-31 1        0
#  #  6 5     1901-01-31 1        0
#  #  7 6     1901-01-31 1        0
#  #  8 7     1901-01-31 1        0
#  #  9 8     1901-01-31 1        0
#  # 10 9     1901-01-31 1        0
#  # # … with 404,510 more rows

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Export the first time step as a RasterLayer object from the raster package.
#  as_raster(runoff, subset = list(time = 1))
#  # class      : RasterLayer
#  # dimensions : 280, 720, 201600  (nrow, ncol, ncell)
#  # resolution : 0.5, 0.5  (x, y)
#  # extent     : -180, 180, -56, 84  (xmin, xmax, ymin, ymax)
#  # crs        : +proj=longlat +datum=WGS84 +no_defs # nolint:commented_code_linter.
#  # source     : memory
#  # names      : runoff
#  # values     : -1.682581e-13, 671.8747  (min, max)
#  
#  # Export the first time step as a terra SpatRaster object.
#  as_terra(runoff, subset = list(time = 1))
#  # class       : SpatRaster
#  # dimensions  : 280, 720, 1  (nrow, ncol, nlyr)
#  # resolution  : 0.5, 0.5  (x, y)
#  # extent      : -180, 180, -56, 84  (xmin, xmax, ymin, ymax)
#  # coord. ref. : lon/lat WGS 84 (EPSG:4326)
#  # source      : memory
#  # name        :        runoff
#  # min value   : -1.682581e-13
#  # max value   :  6.718747e+02
#  # unit        :      mm/month # nolint:commented_code_linter.
#  
#  # Export the first 4 times step as a RasterBrick object.
#  as_raster(runoff, subset = list(time = 1:4))
#  # class      : RasterBrick
#  # dimensions : 280, 720, 201600, 4  (nrow, ncol, ncell, nlayers)
#  # resolution : 0.5, 0.5  (x, y)
#  # extent     : -180, 180, -56, 84  (xmin, xmax, ymin, ymax)
#  # crs        : +proj=longlat +datum=WGS84 +no_defs # nolint:commented_code_linter.
#  # source     : memory
#  # names      :   X1901.01.31,   X1901.02.28,   X1901.03.31,   X1901.04.30
#  # min values : -1.682581e-13, -1.750495e-13, -2.918900e-13, -1.516298e-13
#  # max values :      671.8747,      785.2363,      828.2853,      987.4359
#  
#  # Export the first 4 time steps as a terra SpatRaster object.
#  as_terra(runoff, subset = list(time = 1:4))
#  # class       : SpatRaster
#  # dimensions  : 280, 720, 4  (nrow, ncol, nlyr)
#  # resolution  : 0.5, 0.5  (x, y)
#  # extent      : -180, 180, -56, 84  (xmin, xmax, ymin, ymax)
#  # coord. ref. : lon/lat WGS 84 (EPSG:4326)
#  # source      : memory
#  # names       :    1901-01-31,    1901-02-28,    1901-03-31,    1901-04-30
#  # min values  : -1.682581e-13, -1.750495e-13, -2.918900e-13, -1.516298e-13
#  # max values  :  6.718747e+02,  7.852363e+02,  8.282853e+02,  9.874359e+02
#  # unit        :      mm/month,      mm/month,      mm/month,      mm/month
#  # time (days) : 1901-01-31 to 1901-04-30

## ----setup, echo = TRUE, eval = FALSE, highlight = TRUE-----------------------
#  library(lpjmlkit)

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  npp <- read_io(filename = "./output/npp.bin.json",
#                 subset = list(year = 1970:2011))
#  
#  # Transform "time" into "year" and "month" dimensions.
#  npp$transform(to = "year_month_day")
#  
#  # Plot timeseries with aggregated cell and month dimensions. Note that spatial
#  # aggregation across cells is not area-weighted.
#  plot(npp,
#       aggregate = list(cell = mean, month = sum))
#  
#  # Also available as data array.
#  global_npp_trend <- as_array(npp,
#                               aggregate = list(cell = mean, month = sum))
#  
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  runoff <- read_io(filename = "./output/runoff.bin.json",
#                 subset = list(year = 2002:2011))
#  
#  # Usage of pipe operator operator |> (%>% via package magrittr R version < 4.1)
#  runoff |>
#    # Transform the time and space dimensions ...
#    transform(to = c("year_month_day", "lon_lat")) |>
#    # ... to subset summer months as well as northern hemisphere (positive)
#    #   latitudes.
#    subset(month = 6:9,
#           lat = seq(0.25, 83.75, by = 0.5)) |>
#    # for plotting sum up summer month and take the average over the years
#    plot(aggregate = list(year = mean, month = sum))
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  gpp <- read_io(filename = "./output/gpp.bin.json",
#                 subset = list(year = 2002:2011))
#  
#  # Transform into lon_lat format.
#  gpp$transform(to = "lon_lat")
#  
#  # Plot GPP per latitude.
#  plot(gpp, aggregate = list(time = mean, lon = mean))
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#  # Coordinates for cells around Potsdam.
#  coordinates <- tibble::tibble(lat = c(52.25, 52.400922, 53.25),
#                        lon = c(12.75, 13.03638, 12.75))
#  
#  # Complete pipe notation, from reading to plotting data.
#  read_io(
#    filename = glue("./cftfrac.bin.json"),
#    subset = list(year = 2000:2018)
#  ) |>
#    transform(to = "lon_lat") |>
#    # Special case for subsetting of lat and lon pairs
#    subset(coords = coordinates) |>
#    # Mean across spatial dimensions
#    plot(aggregate = list(lon = mean, lat = mean))
#  

## ---- echo = TRUE, eval = FALSE, highlight = TRUE-----------------------------
#    my_copy <- lpjml_data
#    # Instead use:
#    my_copy <- lpjml_data$clone(deep = TRUE)

