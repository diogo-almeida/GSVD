% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/matrix.low.rank.rebuild.R
\name{matrix.low.rank.rebuild}
\alias{matrix.low.rank.rebuild}
\title{\code{matrix.low.rank.rebuild}: raise matrix to a power and rebuild lower rank version}
\usage{
matrix.low.rank.rebuild(x, k = 0, ...)
}
\arguments{
\item{x}{data matrix}

\item{k}{a flexible parameter in order to build a lower rank estimate of \code{x}. \\ If the value is greater than 1, k is the number of consecutive components (from first) to retain. \\ If 0 < k < 1, this function rebuilds a matrix with the components that explain k*100 percent of the variance. \\ k can also be a vector of numbers that correspond to arbitrary components (e.g., k=c(1,3,5) rebuilds \code{x} with the first, third, and fifth components only).}

\item{...}{parameters to pass through to \code{\link{tolerance.svd}}.}
}
\value{
A low rank version of \code{x}.
}
\description{
\code{matrix.low.rank.rebuild} takes in a matrix and will rebuild a lower rank estimate.
}
\seealso{
\code{\link{tolerance.svd}}, \code{\link{matrix.exponent}}, and \code{\link{matrix.generalized.inverse}}
}
\author{
Derek Beaton
}
\keyword{diagonalization,}
\keyword{eigen,}
\keyword{low}
\keyword{multivariate,}
\keyword{rank}
\keyword{rank,}
