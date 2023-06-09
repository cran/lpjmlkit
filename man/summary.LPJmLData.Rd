% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LPJmLData_stats.R
\name{summary.LPJmLData}
\alias{summary.LPJmLData}
\title{LPJmLData object summary}
\usage{
\method{summary}{LPJmLData}(object, ...)
}
\arguments{
\item{object}{\link{LPJmLData} object}

\item{...}{Further arguments:
\itemize{
\item \code{dimension} for which a summary is printed for every element
(in style of matrix summary). Default is \code{dimension = "band"}. Choose from
available dimensions like \code{"time"} or \code{"cell"}.
\item \code{subset} list of array dimension(s) as name/key and corresponding subset
vector as value, e.g. \verb{list(cell = c(27411:27415)}. More information at
\code{\link[=subset.LPJmLData]{subset.LPJmLData()}}.
\item \code{cutoff} (logical) If \code{TRUE} summary for dimension elements > 16 are
cut off.
\item Additional arguments to be passed on to \link[base]{summary}.
}}
}
\value{
Summary for object of class matrix (see \link[base]{summary}) for
selected dimension(s) and if defined subset.
}
\description{
Function to get the summary of the data array of an LPJmLData object.
See also \link[base]{summary}.
}
