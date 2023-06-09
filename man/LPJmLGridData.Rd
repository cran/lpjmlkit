% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/LPJmLGridData.R
\name{LPJmLGridData}
\alias{LPJmLGridData}
\title{LPJmL grid data class}
\description{
A dedicated data class for an LPJmL input or output grid.
LPJmLGridData serves the spatial reference for any \link{LPJmLData} objects and
matches its spatial dimensions ("cell" or "lon", "lat") when attached as an
grid attribute to it.\
LPJmLGridData holds the information which longitude and latitude correspond
to each cell center assuming WGS84 as the coordinate reference system or
the corresponding cell index when the data comes with longitude and latitude
dimension.
As in LPJmLData the data array can be accessed via \verb{$data},
the meta data via \verb{$meta}.
}
\section{Super class}{
\code{\link[lpjmlkit:LPJmLData]{lpjmlkit::LPJmLData}} -> \code{LPJmLGridData}
}
\section{Methods}{
\subsection{Public methods}{
\itemize{
\item \href{#method-LPJmLGridData-add_grid}{\code{LPJmLGridData$add_grid()}}
\item \href{#method-LPJmLGridData-subset}{\code{LPJmLGridData$subset()}}
\item \href{#method-LPJmLGridData-transform}{\code{LPJmLGridData$transform()}}
\item \href{#method-LPJmLGridData-as_raster}{\code{LPJmLGridData$as_raster()}}
\item \href{#method-LPJmLGridData-as_terra}{\code{LPJmLGridData$as_terra()}}
\item \href{#method-LPJmLGridData-.__subset_space__}{\code{LPJmLGridData$.__subset_space__()}}
\item \href{#method-LPJmLGridData-.__transform_space__}{\code{LPJmLGridData$.__transform_space__()}}
\item \href{#method-LPJmLGridData-new}{\code{LPJmLGridData$new()}}
\item \href{#method-LPJmLGridData-print}{\code{LPJmLGridData$print()}}
\item \href{#method-LPJmLGridData-clone}{\code{LPJmLGridData$clone()}}
}
}
\if{html}{\out{
<details><summary>Inherited methods</summary>
<ul>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id=".__set_data__"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-.__set_data__'><code>lpjmlkit::LPJmLData$.__set_data__()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id=".__set_grid__"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-.__set_grid__'><code>lpjmlkit::LPJmLData$.__set_grid__()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id="as_array"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-as_array'><code>lpjmlkit::LPJmLData$as_array()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id="as_tibble"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-as_tibble'><code>lpjmlkit::LPJmLData$as_tibble()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id="dim"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-dim'><code>lpjmlkit::LPJmLData$dim()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id="dimnames"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-dimnames'><code>lpjmlkit::LPJmLData$dimnames()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id="length"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-length'><code>lpjmlkit::LPJmLData$length()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id="plot"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-plot'><code>lpjmlkit::LPJmLData$plot()</code></a></span></li>
<li><span class="pkg-link" data-pkg="lpjmlkit" data-topic="LPJmLData" data-id="summary"><a href='../../lpjmlkit/html/LPJmLData.html#method-LPJmLData-summary'><code>lpjmlkit::LPJmLData$summary()</code></a></span></li>
</ul>
</details>
}}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-add_grid"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-add_grid}{}}}
\subsection{Method \code{add_grid()}}{
! Not allowed to add a grid to an \code{LPJmLGridData} object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$add_grid(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \code{\link[=add_grid]{add_grid()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-subset"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-subset}{}}}
\subsection{Method \code{subset()}}{
! Not allowed to use dimension names of \code{LPJmLGridData$data}
array directly to subset each dimension to match the supplied vectors.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$subset(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \code{\link[=subset.LPJmLData]{subset.LPJmLData()}}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-transform"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-transform}{}}}
\subsection{Method \code{transform()}}{
! Not allowed to transform inner \code{LPJmLGridData$data} array
into another space or time format.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$transform(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \code{\link[=transform]{transform()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-as_raster"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-as_raster}{}}}
\subsection{Method \code{as_raster()}}{
! Not allowed to coerce (convert) an \code{LPJmLGridData} object into a
\link[raster]{raster} or \link[raster]{brick} object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$as_raster(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \code{\link[=as_raster]{as_raster()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-as_terra"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-as_terra}{}}}
\subsection{Method \code{as_terra()}}{
! Not allowed to coerce (convert) an \code{LPJmLGridData} object into a
\link[terra]{rast} object.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$as_terra(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \code{\link[=as_terra]{as_terra()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-.__subset_space__"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-.__subset_space__}{}}}
\subsection{Method \code{.__subset_space__()}}{
! Internal method only to be used for package development.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$.__subset_space__(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \code{\link[=subset]{subset()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-.__transform_space__"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-.__transform_space__}{}}}
\subsection{Method \code{.__transform_space__()}}{
! Internal method only to be used for package development.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$.__transform_space__(...)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{...}}{See \code{\link[=transform]{transform()}}.}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-new"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-new}{}}}
\subsection{Method \code{new()}}{
!Internal method only to be used for package development!
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$new(lpjml_data)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{lpjml_data}}{LPJmLData object with variable \code{"grid"} or \code{"LPJGRID"}}
}
\if{html}{\out{</div>}}
}
}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-print"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-print}{}}}
\subsection{Method \code{print()}}{
Method to print the \code{LPJmLGridData}. \cr
See also \link[base]{print}
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$print()}\if{html}{\out{</div>}}
}

}
\if{html}{\out{<hr>}}
\if{html}{\out{<a id="method-LPJmLGridData-clone"></a>}}
\if{latex}{\out{\hypertarget{method-LPJmLGridData-clone}{}}}
\subsection{Method \code{clone()}}{
The objects of this class are cloneable with this method.
\subsection{Usage}{
\if{html}{\out{<div class="r">}}\preformatted{LPJmLGridData$clone(deep = FALSE)}\if{html}{\out{</div>}}
}

\subsection{Arguments}{
\if{html}{\out{<div class="arguments">}}
\describe{
\item{\code{deep}}{Whether to make a deep clone.}
}
\if{html}{\out{</div>}}
}
}
}
