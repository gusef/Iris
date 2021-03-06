% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/neighborhood.analysis.R, R/proximity.analysis.R
\docType{methods}
\name{plot_proximities}
\alias{plot_proximities}
\alias{plot_proximities,ImageSet-method}
\alias{plot_proximities,ANY,ANY-method}
\alias{plot_proximities}
\alias{plot_proximities,ImageSet-method}
\alias{plot_proximities,ANY,ANY-method}
\title{Plot proximity analysis data}
\usage{
plot_proximities(x, ...)

\S4method{plot_proximities}{ImageSet}(x, label, ordering = NULL,
  normalize = TRUE, palette = NULL, celltype_order = NULL,
  xlim_fix = 13, topbar_cols = "darkgrey")

plot_proximities(x, ...)

\S4method{plot_proximities}{ImageSet}(x, label, ordering = NULL,
  normalize = TRUE, palette = NULL, celltype_order = NULL,
  xlim_fix = 13, topbar_cols = "darkgrey")
}
\arguments{
\item{x}{An IrisSpatialFeatures ImageSet object}

\item{...}{Additional parameters.}

\item{label}{Cell-type for which the proximit profile is plotted}

\item{ordering}{Ordering of the samples (Default: NULL)}

\item{normalize}{Flag, should the populations of different cell-types sum up to one in each sample? (Default: TRUE)}

\item{palette}{Color palette, by default it uses Spectral from RColorbrewer (Default:NULL)}

\item{celltype_order}{Ordering of the cell-type. (Default: NULL)}

\item{xlim_fix}{Space on the right side to show the legend (Default: 13)}

\item{topbar_cols}{Color of the barplots on top (Default: 'darkgrey'}

\item{x}{An IrisSpatialFeatures ImageSet object}

\item{label}{Cell-type for which the proximit profile is plotted}

\item{ordering}{Ordering of the samples (Default: NULL)}

\item{normalize}{Flag, should the populations of different cell-types sum up to one in each sample? (Default: TRUE)}

\item{palette}{Color palette, by default it uses Spectral from RColorbrewer (Default:NULL)}

\item{celltype_order}{Ordering of the cell-type. (Default: NULL)}

\item{xlim_fix}{Space on the right side to show the legend (Default: 13)}

\item{topbar_cols}{Color of the barplots on top (Default: 'darkgrey'}

\item{...}{Additional parameters.}
}
\value{
plot proximity analysis

plot proximity analysis
}
\description{
Plot proximity analysis data

Plot proximity analysis data
}
\examples{

#loading pre-read dataset
dataset <- IrisSpatialFeatures_data
dataset <- extract_proximity(dataset,only_closest=TRUE,radii=25)
p <- plot_proximities(dataset,"SOX10+ PDL1-",xlim_fix=3)


#loading pre-read dataset
dataset <- IrisSpatialFeatures_data
dataset <- extract_proximity(dataset,only_closest=TRUE,radii=25)
p <- plot_proximities(dataset,"SOX10+ PDL1-",xlim_fix=3)

}
