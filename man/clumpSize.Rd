% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clumpSize.R
\name{clumpSize}
\alias{clumpSize}
\title{Calculate size of pixel clumps in a RasterLayer}
\usage{
clumpSize(x, f = 1, stats = FALSE, ...)
}
\arguments{
\item{x}{RasterLayer.}

\item{f}{Numeric. Optional: conversion factor for number of pixels (e.g. f=900/10000 for converting Landsat pixels to area in hectares).}

\item{stats}{Logical. Include summary statistics per clump? If TRUE, a list with (1) a raster layer showing clump sizes and (2) a summary table per clump. If FALSE, only a raster layer is returned.}

\item{...}{Additional arguments to pass to \code{\link{clump}}}
}
\value{
If \code{stats=FALSE}, a raster layer with pixel values indicating the size of the clumps to which those pixels belong. If \code{stats=TRUE}, a list with 2 objects: (1) a raster layer as above; and (2) a summary table of the pixel clump sizes.
}
\description{
Calculate the size of pixel clumps in a RasterLayer. The clump area is assigned to each clump, and araster with identical dimensions, but values representing the clump size is output. The definition of a pixel clump follows that of \code{\link{clump}}, where diagonals are either included or ignored in defining clumps. An optional conversion factor can be supplied based on pixel size.
}
\details{
Note that if \code{stats=TRUE}, a summary table is also produced. This table is not the same table that would result if the resulting raster was passed to \code{summary}. The summary table in this case is based on pixel clumps, rather than individual pixel values. The conversion factor \code{f} is also factored into the summary table.
}
\author{
Ben DeVries
}

