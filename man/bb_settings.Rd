% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/config.R
\name{bb_settings}
\alias{bb_settings}
\alias{bb_settings<-}
\title{Gets or sets a bowerbird configuration object's settings}
\usage{
bb_settings(config)

bb_settings(config) <- value
}
\arguments{
\item{config}{bb_config: a bowerbird configuration (as returned by \code{bb_config})}

\item{value}{list: new values to set}
}
\value{
named list
}
\description{
Gets or sets a bowerbird configuration object's settings. These are repository-wide settings that are applied to all data sources added to the configuration. Use this function to alter the settings of a configuration previously created using \code{bb_config}.
}
\details{
Note that an assignment along the lines of \code{bb_settings(cf) <- new_settings} replaces all of the settings in the configuration with the \code{new_settings}. The most common usage pattern is to read the existing settings, modify them as needed, and then rewrite the whole lot back into the configuration object (as per the examples here).
}
\examples{
cf <- bb_config(local_file_root="/your/data/directory")

## see current settings
bb_settings(cf)

## add an http proxy
sets <- bb_settings(cf)
sets$http_proxy <- "http://my.proxy"
bb_settings(cf) <- sets

## change the current local_file_root setting
sets <- bb_settings(cf)
sets$local_file_root <- "/new/location"
bb_settings(cf) <- sets

}
\seealso{
\code{\link{bb_config}}
}
