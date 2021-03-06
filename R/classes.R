#' Class to represent the raw data that is output by inForm
#'
#' @slot data Raw coordinate data sheet
#' @slot summary Inform summary (optional)
#' @slot score Score table that indicates intensity cutoff for certain markers
#!       such as PD1 and PD-L1
#' @slot mem_seg_map Membrane map as output by inForm
#' @slot nuc_seg_map Nuclear map as output by inForm (optional)
#' @slot component_tiff component tiff as output by inForm (optional)
#' @docType class
raw_data <- setClass(
    "raw_data",
    slots = c(
        data = 'data.frame',
        summary = 'matrix',
        score = 'matrix',
        mem_seg_map = 'matrix',
        nuc_seg_map = 'matrix'
        #,component_tiff = 'list'
    )
)

setOldClass(c("ppp"))

#' Class to represent a single imaging coordinate
#'
#' @slot ppp A spatstat ppp object that contains all coordinate information
#' @slot raw Includes all raw data that is output from inForm
#' @slot mask List of user defined masks that define regions of interest
#' @slot coordinate_name Name of the current coordinate
#' @slot size_in_px Size of the image in pixel, accounting for mask size
#' @docType class
#' @examples
#' coord <- new("Coordinate")
#'
#' @importFrom spatstat ppp
Coordinate <- setClass(
    "Coordinate",
    slots = c(
        ppp = "ppp",
        raw = "raw_data",
        mask = "list",
        coordinate_name = "character",
        size_in_px = "numeric"
    ),
    prototype = list(ppp = ppp())
)

#' An S3 class to represent a single imaging sample with multiple coordinates.
#'
#' @slot coordinates A list of coordinate objects that contain all of the raw
#'       and coordinate data.
#' @slot sample_name Name of the contained sample.
#' @docType class
#'
Sample <- setClass("Sample",
                   slots = c(coordinates = "list",
                             sample_name = "character"))

#' Class to represent an imaging dataset.
#'
#' @slot samples A list of samples each containing multiple coordinates.
#' @slot counts A list of counts of different cell types for each coordinate
#'       in each sample.
#' @slot nearest_neighbors A list of mean and std of nearest neighbor
#'       distances for each samples.
#' @slot interactions A list of interaction information for each sample.
#' @slot proximity A list of mean and std of nearest neighbor distances for
#'       each sample.
#' @slot microns_per_pixel Scalar value that indicates the length of a pixel
#'       in micrometers.
#' @slot markers A vector of strings indicating all different cell types
#'               considered.
#' @slot invasive_margin_in_px The width of the invasive margin in pixels
#' @slot readMasks Flag indicating whether the "_Tumor.tif" and
#'                 "_Invasive_Margin.tif" should be read (default: True)
#' @slot ignore_scoring Flag indicating whether the scoring file should be
#'                      ignored (default: FALSE)
ImageSet <- setClass(
    "ImageSet",
    slots = c(
        samples = "list",
        pData = "data.frame",
        counts = "list",
        nearest_neighbors = "list",
        interactions = "list",
        proximity = "list",
        microns_per_pixel = "numeric",
        markers = "character",
        invasive_margin_in_px = 'numeric'
    )
)
