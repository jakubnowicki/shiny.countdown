% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/countdown.R
\name{countdown}
\alias{countdown}
\title{countdown}
\usage{
countdown(start, width = NULL, height = NULL, elementId = NULL)
}
\arguments{
\item{start}{countdown start date, can be a string or a datetime object (POSIXct or POSIXlt)}

\item{width}{widget width}

\item{height}{widget height}

\item{elementId}{widget id}
}
\description{
A countdown widget
}
\examples{
countdown(as.POSIXct("2015-10-12 13:00:00", tz = "UTC"))

}
