% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/config.R
\name{bb_subset}
\alias{bb_subset}
\title{Keep only selected data_sources in a bowerbird configuration}
\usage{
bb_subset(config, idx)
}
\arguments{
\item{config}{bb_config: a bowerbird configuration (as returned by \code{bb_config})}

\item{idx}{logical or numeric: index vector of data_source rows to retain}
}
\value{
configuration object
}
\description{
Keep only selected data_sources in a bowerbird configuration
}
\examples{
\dontrun{
  cf <- bb_config("/my/file/root") \%>\%
    bb_add(bb_example_sources()) \%>\%
    bb_subset(1:2)
}
}
\seealso{
\code{\link{bb_source}}, \code{\link{bb_config}}
}
