#' @title Create a new LPJmL input/output file header
#'
#' @description Create a header from scratch in the format required by
#'   [`write_header()`].
#'
#' @param name Header name attribute (default: `"LPJGRID").
#' @param version CLM version to use (default: `3`).
#' @param order Order of data items. See details below or LPJmL code for
#'   supported values. The order may be provided either as an integer value or
#'   as a character string (default: `1`).
#' @param firstyear Start year of data in file (default: `1901`).
#' @param nyear Number of years of data included in file (default: `1`).
#' @param firstcell Index of first data item (default: `0`).
#' @param ncell Number of data items per band.
#' @param nbands Number of bands per year of data (default: `2`).
#' @param cellsize_lon Longitude cellsize in degrees (default: `0.5`).
#' @param scalar Conversion factor applied to data when it is read by LPJmL or
#'   by `read_io()` (default: `1.0`).
#' @param cellsize_lat Latitude cellsize in degrees (default: same as
#'   `cellsize_lon`).
#' @param datatype LPJmL data type in file. See details below or LPJmL code for
#'   valid data type codes (default: `3`).
#' @param nstep Number of time steps per year. Added in header version 4 to
#'   separate time bands from content bands (default: `1`).
#' @param timestep If larger than 1, outputs are averaged over `timestep` years
#'   and only written once every `timestep` years (default: `1`).
#' @param endian Endianness to use for file (either `"big"` or `"little"`, by
#'   default uses platform-specific endianness `.Platform$endian`).
#' @param verbose If `TRUE` (the default), function provides some feedback on
#'   datatype and when using default values for missing parameters. If `FALSE`,
#'   only errors are reported.
#'
#' @return The function returns a list with 3 components:
#' * name: The header name, e.g. "LPJGRID".
#' * header: Vector of header values ('version', 'order', 'firstyear',
#'     'nyear', 'firstcell', 'ncell', 'nbands', 'cellsize_lon', 'scalar',
#'     'cellsize_lat', 'datatype', 'nstep', 'timestep').
#' * endian: Endian used to write binary data, either "little" or "big".
#'
#' @examples
#' header <- create_header(
#'   name = "LPJGRID",
#'   version = 3,
#'   order = 1,
#'   firstyear = 1901,
#'   nyear = 1,
#'   firstcell = 0,
#'   ncell = 67420,
#'   nbands = 2,
#'   cellsize_lon = 0.5,
#'   scalar = 1.0,
#'   cellsize_lat = 0.5,
#'   datatype = 3,
#'   nstep = 1,
#'   timestep = 1,
#'   endian = .Platform$endian,
#'   verbose = TRUE
#' )
#'
#' @details
#' File headers in input files are used by LPJmL to determine the
#' structure of the file and how to read it. They can also be used to describe
#' the structure of output files.
#'
#' Header names usually start with "LPJ" followed by a word or abbreviation
#' describing the type of input/output data. See LPJmL code for valid header
#' names.
#'
#' The version number determines the amount of header information included in
#' the file. All versions save the header name and header attributes 'version',
#' 'order', 'firstyear', 'nyear', 'firstcell', 'ncell', and 'nbands'. Header
#' versions 2, 3 and 4 add header attributes 'cellsize_lon' and 'scalar'. Header
#' versions 3 and 4 add header attributes 'cellsize_lat' and 'datatype'. Header
#' version 4 adds attributes 'nstep' and 'timestep'.
#'
#' Valid values for `order` are `1` / `"cellyear"`, `2` / `"yearcell"`, `3` /
#' `"cellindex"`, and `4` / `"cellseq"`. The default for LPJmL input files is
#' `1`. The default for LPJmL output files is `4`, except for grid output
#' files which also use `1`.
#'
#' By default, input files contain data for all cells, indicated by setting
#' the `firstcell` index to `0`. If `firstcell > 0`, LPJmL assumes the first
#' `firstcell` cells to be missing in the data.
#'
#' Valid codes for the `datatype` attribute and the corresponding LPJmL data
#' types are: `0` / `"byte"` (LPJ_BYTE), `1` / `"short"` (LPJ_SHORT), `2` /
#' `"int"` (LPJ_INT), `3` / `"float"` (LPJ_FLOAT), `4` / `"double"`
#' (LPJ_DOUBLE).
#'
#' The default parameters of the function are valid for grid input files using
#' LPJ_FLOAT data type.
#'
#' @seealso
#' * [read_header()] for reading headers from LPJmL input/output files.
#' * [write_header()] for writing headers to files.
#'
#' @export
create_header <- function(name = "LPJGRID", # nolint:cyclocomp_linter.
                          version = 3,
                          order = 1,
                          firstyear = 1901,
                          nyear = 1,
                          firstcell = 0,
                          ncell,
                          nbands = 2,
                          cellsize_lon = 0.5,
                          scalar = 1,
                          cellsize_lat = cellsize_lon,
                          datatype = 3,
                          nstep = 1,
                          timestep = 1,
                          endian = .Platform$endian,
                          verbose = TRUE
                         ) {
  header <- list()
  if (length(name) == 1 && is.character(name)) {
    header[["name"]] <- name
  } else {
    stop(sQuote(name), " must be a character vector of length 1")
  }
  if (substr(header[["name"]], 1, 3) != "LPJ" && verbose)
    warning(
      paste(
        "Header name",
        sQuote(name),
        "is probably invalid for use in LPJmL."
      )
    )
  # Support for name strings for order and datatype
  if (length(order) == 1 && is.character(order)) {
    order <- switch(
      order,
      cellyear = 1,
      yearcell = 2,
      cellindex = 3,
      cellseq = 4,
      stop("Invalid order string ", sQuote(order))
    )
  }
  if (length(datatype) == 1 && is.character(datatype)) {
    datatype <- switch(
      datatype,
      byte = 0,
      short = 1,
      int = 2,
      float = 3,
      double = 4,
      stop("Invalid datatype string ", sQuote(datatype))
    )
  }
  header[["header"]] <- numeric(0)
  # Check that valid values have been provided for all parameters included
  # in all header versions
  for (check in base_header_items) {
    if (length(get(check)) == 1 && is.numeric(get(check)) &&
      get(check) == as.integer(get(check))
    ) {
      header[["header"]] <- c(header[["header"]], as.integer(get(check)))
      names(header[["header"]])[length(header[["header"]])] <- check
    } else {
      stop(sQuote(check), " must be an integer of length 1")
    }
  }
  if (version >= 2) {
    # Check that valid values have been provided for additional parameters in
    # header version >=2
    for (check in c("cellsize_lon", "scalar")) {
      if (length(get(check)) == 1 && is.numeric(get(check))) {
        header[["header"]] <- c(header[["header"]], as.double(get(check)))
        names(header[["header"]])[length(header[["header"]])] <- check
      } else {
        stop(sQuote(check), " must be a float of length 1")
      }
    }
    # Check that valid values have been provided for additional parameters in
    # header version >=3
    if (version >= 3) {
      if (length(cellsize_lat) == 1 && is.numeric(cellsize_lat)) {
        header[["header"]] <- c(
          header[["header"]],
          cellsize_lat = as.double(cellsize_lat)
        )
      } else {
        stop(sQuote("cellsize_lat"), " must be a float of length 1")
      }
      if (length(datatype) == 1) {
        if (!is.null(
          get_datatype(c(datatype = datatype), fail = FALSE)
        )) {
          header[["header"]] <- c(
            header[["header"]],
            datatype = as.integer(datatype)
          )
          if (verbose) {
            message(
              paste0(
                "Setting datatype to ",
                ifelse(get_datatype(header)$signed, "", "unsigned "),
                typeof(get_datatype(header)$type),
                " with size ",
                get_datatype(header)$size,
                "."
              )
            )
          }
        } else {
          stop("Unknown datatype ", datatype, ".")
        }
      } else {
        stop(sQuote("datatype"), " must be an integer of length 1.")
      }
      # Check that valid values have been provided for additional parameters in
      # header version 4
      if (version >= 4) {
        if (length(nstep) == 1 && is.numeric(nstep) &&
          nstep == as.integer(nstep)
        ) {
          header[["header"]] <- c(
            header[["header"]],
            nstep = as.integer(nstep)
          )
        } else {
          stop(sQuote("nstep"), " must be an integer of length 1")
        }
        if (length(timestep) == 1 && is.numeric(timestep) &&
          timestep == as.integer(timestep)
        ) {
          header[["header"]] <- c(
            header[["header"]],
            timestep = as.integer(timestep)
          )
        } else {
          stop(sQuote("timestep"), " must be an integer of length 1")
        }
      }
    }
  }
  # Add defaults
  warntext <- paste("Type", header$header["version"], "header:")
  if (!"cellsize_lon" %in% names(header$header)) {
    if (missing(cellsize_lon) || length(cellsize_lon) != 1 ||
      !is.numeric(cellsize_lon)
    ) {
      header[["header"]] <- c(
        header[["header"]],
        cellsize_lon = 0.5
      )
    } else {
      header[["header"]] <- c(
        header[["header"]],
        cellsize_lon = as.double(cellsize_lon)
      )
      if (cellsize_lon != 0.5) {
        warntext <- paste0(
          warntext,
          "\nSetting non-default cellsize_lon ", cellsize_lon,
          ". This information is not kept when saving header to file."
        )
      }
      if (missing(cellsize_lat)) {
        cellsize_lat <- cellsize_lon
      }
    }
  }
  if (!"scalar"  %in% names(header$header)) {
    if (missing(scalar) || length(scalar) != 1 || !is.numeric(scalar)) {
      header[["header"]] <- c(
        header[["header"]],
        scalar = 1
      )
    } else {
      header[["header"]] <- c(
        header[["header"]],
        scalar = as.double(scalar)
      )
      if (scalar != 1) {
        warntext <- paste0(
          warntext,
          "\nSetting non-default scalar ", scalar,
          ". This information is not kept when saving header to file."
        )
      }
    }
  }
  if (!"cellsize_lat" %in% names(header$header)) {
    if (missing(cellsize_lat) || length(cellsize_lat) != 1 ||
      !is.numeric(cellsize_lat)
    ) {
      header[["header"]] <- c(
        header[["header"]],
        cellsize_lat = 0.5
      )
    } else {
      header[["header"]] <- c(
        header[["header"]],
        cellsize_lat = as.double(cellsize_lat)
      )
      second_res <- ifelse(version > 1, header[["header"]]["cellsize_lon"], 0.5)
      if (
        any(cellsize_lat != c(header[["header"]]["cellsize_lon"], second_res))
      ) {
        warntext <- paste0(
          warntext,
          "\nSetting non-default cellsize_lat ", cellsize_lat,
          ". This information is not kept when saving header to file."
        )
      }
    }
  }
  if (!"datatype" %in% names(header$header)) {
    if (missing(datatype) || length(datatype) != 1 || is.null(
      get_datatype(c(datatype = datatype))
    )) {
      header[["header"]] <- c(
        header[["header"]],
        datatype = 1
      )
    } else {
      header[["header"]] <- c(
        header[["header"]],
        datatype = as.integer(datatype)
      )
      if (datatype != 1) {
        warntext <- paste0(
          warntext,
          "\nSetting non-default datatype ", as.integer(datatype), " (",
          ifelse(get_datatype(header)$signed, "", "unsigned "),
          typeof(get_datatype(header)$type),
          " with size ",
          get_datatype(header)$size,
          "). This information is not kept when saving header to file."
        )
      }
    }
  }
  if (!"nstep" %in% names(header$header)) {
    if (missing(nstep) || length(nstep) != 1 || !is.numeric(nstep) ||
      nstep != as.integer(nstep)
    ) {
      header[["header"]] <- c(
        header[["header"]],
        nstep = 1
      )
    } else {
      header[["header"]] <- c(
        header[["header"]],
        nstep = as.integer(nstep)
      )
      if (nstep != 1) {
        warntext <- paste0(
          warntext,
          "\nSetting non-default nstep ", nstep,
          ". This information is not kept when saving header to file."
        )
      }
    }
  }
  if (!"timestep" %in% names(header$header)) {
    if (missing(timestep) || length(timestep) != 1 || !is.numeric(timestep) ||
      timestep != as.integer(timestep)
    ) {
      header[["header"]] <- c(
        header[["header"]],
        timestep = 1
      )
    } else {
      header[["header"]] <- c(
        header[["header"]],
        timestep = as.integer(timestep)
      )
      if (timestep != 1) {
        warntext <- paste0(
          warntext,
          "\nSetting non-default timestep ", timestep,
          ". This information is not kept when saving header to file."
        )
      }
    }
  }
  if (verbose &&
    warntext != paste("Type", header$header["version"], "header:")
  ) {
    warning(warntext)
  }
  if (!is.null(endian) && length(endian) == 1 &&
    endian %in% c("big", "little")
  ) {
    header[["endian"]] <- endian
  } else {
    stop(
      "Endian must be either 'big' or 'little'. Provided value: ",
      sQuote(endian), "."
    )
  }
  header
}

#' @title Header validity check
#'
#' @description Check whether a header has the correct structure.
#'
#' @param header An LPJmL file header as returned by [`read_header()`] or
#'   [`create_header()`].
#'
#' @return Returns `header` invisibly if it has a valid structure. Raises an
#'   error otherwise.
#' @noRd
is_valid_header <- function(header) {
  # Check header structure. Expect a list with elements "name", "header" and
  # "endian".
  if (!is.list(header) ||
    any(sapply(header[c("name", "header", "endian")], is.null)) # nolint:undesirable_function_linter.
  ) {
    stop(
      "Header has invalid structure. Must be a list with elements ",
      "'name', 'header', 'endian'"
    )
  }
  # Confirm that no other elements are in list
  if (length(header) != 3) {
    stop(
      "Header has invalid structure. Must be a list with elements ",
      "'name', 'header', 'endian'"
    )
  }
  # Expect only a single "name" and "endian"
  if (any(sapply(header[c("name", "endian")], length) != 1)) { # nolint:undesirable_function_linter.
    stop("Header has invalid structure. More than one 'name' or 'endian'")
  }
  # Expect header$header to have 13 values (some of which may be defaults)
  if (length(header$header) != 13) {
    stop("Header has invalid structure. Invalid header$header")
  }
  # Check that all items are present in header or header$header
  if (any(
    !setdiff(valid_header_items, names(header)) %in% names(header$header)
  )) {
    stop(
      "Header has invalid structure: item(s) ",
      toString(
        sQuote(
          setdiff(
            setdiff(valid_header_items, names(header)),
            names(header$header)
          )
        )
      ),
      " missing in header$header"
    )
  }

  if (anyNA(header$header[base_header_items])) {
    stop(
      "Header values must not be set to NA. Please check: ",
      toString(sQuote(names(which(is.na(header$header[base_header_items])))))
    )
  }
  if (header$header["version"] > 1) {
    if (anyNA(header$header[c("cellsize_lon", "scalar")])) {
      stop(
        "Header values must not be set to NA. Please check: ",
        toString(
          sQuote(
            names(which(is.na(header$header[c("cellsize_lon", "scalar")])))
          )
        )
      )
    }
  }
  if (header$header["version"] > 2) {
    if (anyNA(header$header[c("cellsize_lat", "datatype")])) {
      stop(
        "Header values must not be set to NA. Please check: ",
        toString(
          sQuote(
            names(which(is.na(header$header[c("cellsize_lat", "datatype")])))
          )
        )
      )
    }
  }
  if (header$header["version"] > 3) {
    if (anyNA(header$header[c("nstep", "timestep")])) {
      stop(
        "Header values must not be set to NA. Please check: ",
        toString(
          sQuote(
            names(which(is.na(header$header[c("nstep", "timestep")])))
          )
        )
      )
    }
  }

  invisible(header)
}

# Basic items included in all header versions
base_header_items <- c(
  "version",
  "order",
  "firstyear",
  "nyear",
  "firstcell",
  "ncell",
  "nbands"
)

# All valid items in header
valid_header_items <- c(
    "name", "version", "order", "firstyear", "nyear", "firstcell", "ncell",
    "nbands", "cellsize_lon", "scalar", "cellsize_lat", "datatype", "nstep",
    "timestep", "endian"
)
