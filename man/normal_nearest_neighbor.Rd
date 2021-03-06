% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/normalized.nearest.neighbor.R
\docType{methods}
\name{normal_nearest_neighbor}
\alias{normal_nearest_neighbor}
\alias{normal_nearest_neighbor,ImageSet-method}
\alias{normal.nearest.neighbor,ANY,ANY-method}
\title{Extract the distance to each nearest neighbor for specified
cell-types, normalized by downsampling each cell-type to the
same size (the smallest population from among the specified
markers), calculates across all samples}
\usage{
normal_nearest_neighbor(data, markers, n_resamples = 500,
  minimum_cells = 50, quantiles = c(0.05, 0.25, 0.5, 0.75, 0.95),
  grouped_sample = TRUE)

\S4method{normal_nearest_neighbor}{ImageSet}(data, markers, n_resamples = 500,
  minimum_cells = 50, quantiles = c(0.05, 0.25, 0.5, 0.75, 0.95),
  grouped_sample = TRUE)
}
\arguments{
\item{data}{IrisSpatialFeatures ImageSet object}

\item{markers}{vector of marker names to use}

\item{n_resamples}{number of times to resample each frame (default:500)}

\item{minimum_cells}{the smallest number of cells to consider a frame (default:50)}

\item{quantiles}{vector of numeric fractions to include in vector
to show the mean distance calculated across resamplings
(default:c(0.05,0.25,0.5,0.75,0.95))}

\item{grouped_sample}{TRUE/FALSE group samples together (default:TRUE)}
}
\value{
data.frame
}
\description{
Extract the distance to each nearest neighbor for specified
cell-types, normalized by downsampling each cell-type to the
same size (the smallest population from among the specified
markers), calculates across all samples
}
\examples{

#loading pre-read dataset
dataset <- IrisSpatialFeatures_data
dataset <- extract_nearest_neighbor(dataset)
normal_nearest_neighbor(dataset,c("SOX10+ PDL1+","SOX10+ PDL1-"),10)

}
