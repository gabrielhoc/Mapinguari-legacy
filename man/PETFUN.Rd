% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/standardFUNs.R
\name{PETFUN}
\alias{PETFUN}
\title{Wrapper around \code{PET_fromTemp} function from package \code{EcoHydrology}}
\usage{
PETFUN(tmax, tmin, alt)
}
\arguments{
\item{tmax}{Raster* object. Maximum temperature raster.}

\item{tmin}{Raster* object. Minimum temperature raster.}

\item{alt}{Raster* object. Altitude raster.}
}
\value{
Returns a RasterLayer with estimates of Potential EvapoTranspiration in milimiters.
}
\description{
\code{PETFUN} Gets Potential EvapoTranspiration (PET) rasters from maximum temperature, minimum temperature and altitude rasters by applying function \code{PET_fromTemp} from package \code{EcoHydrology}
}
\examples{

FulanusEcoRasters_present <-
  get_rasters(
    raster_source = "/Users/gabriel/Documents/Mapinguari/global_grids_10_minutes",
    ext = FulanusDistribution,
    margin = 5,
    non_fixed_var = c('prec', 'tmin', 'tmax'),
    fixed_var = 'alt',
    years = c("present"),
    reorder = TRUE)

alt <- FulanusEcoRasters_present$present$alt
tmax <- FulanusEcoRasters_present$present[[25:36]]/10
tmin <- FulanusEcoRasters_present$present[[13:24]]/10

PET <- PETFUN(tmax, tmin, alt)

}
