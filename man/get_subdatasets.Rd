% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_subdatasets.R
\name{get_subdatasets}
\alias{get_subdatasets}
\title{get_subdatasets}
\usage{
get_subdatasets(datasetname, names_only = TRUE, normalizePath = FALSE,
  verbose = FALSE)
}
\arguments{
\item{datasetname}{Character. Input HDF4/5 or NetCDF file.}

\item{names_only}{Logical. Return subdataset names only?  Default=TRUE.}

\item{normalizePath}{Logical. Normalize the file path?  Default=FALSE.}

\item{verbose}{Logical. Enable verbose execution? Default is FALSE.}
}
\value{
character vector of subdataset names that can be used in gdal_translate.
}
\description{
Returns HDF4, HDF5, and NetCDF subdataset names for standardized files.
}
\details{
Currently, this only returns the subdataset names of HDF4, HDF5, and NetCDF files,
assuming they follow the SUBDATASET_n_NAME convention.  This can be used with gdal_translate
to extract a single subdataset (or with gdal_translate(...,sd_index=n)

This function assumes the user has a working GDAL on their system.  If the 
"gdalUtils_gdalPath" option has been set (usually by gdal_setInstallation),
the GDAL found in that path will be used.  If nothing is found, gdal_setInstallation
will be executed to attempt to find a working GDAL.
}
\examples{
\dontrun{ 
hdf4_dataset <- system.file("external/test_modis.hdf", package="gdalUtils")
get_subdatasets(hdf4_dataset)
}
}
\references{
\url{http://www.gdal.org/gdalinfo.html}
}
\author{
Jonathan A. Greenberg (\email{gdalUtils@estarcion.net}) and Matteo Mattiuzzi (wrapper) and Frank Warmerdam (GDAL lead developer).
}
