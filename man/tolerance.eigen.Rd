% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tolerance.eigen.R
\name{tolerance.eigen}
\alias{tolerance.eigen}
\title{\code{tolerance.eigen}: An eigenvalue decomposition to truncate potentially spurious (near machine precision) components.}
\usage{
tolerance.eigen(x, tol = sqrt(.Machine$double.eps), ...)
}
\arguments{
\item{x}{A data matrix of size for input to the eigen value decomposition (\code{\link{eigen}})}

\item{tol}{Default is \code{sqrt(.Machine$double.eps)}. A tolerance level for eliminating near machine precision components.
Use of this parameter causes \code{tolerance.eigen} to stop if negative or complex eigen values are detected.
The use of \code{tol < 0}, \code{NA}, \code{NaN}, \code{Inf}, \code{-Inf}, or \code{NULL} passes through to \code{\link{eigen}}.}

\item{...}{Further arguments to \code{\link{eigen}}. See \code{\link{eigen}}.}
}
\value{
A list with two elements (like \code{eigen}):
 \item{values}{ A vector containing the eigen values of x > \code{tol}.}
 \item{vectors}{ A matrix whose columns contain the right singular vectors of x, present if nv > 0. Dimension \code{min(c(ncol(x), nv, length(d))}.}
}
\description{
\code{tolerance.eigen} eliminates likely spurious components: any eigenvalue (squared singular value) below a tolerance level is elminated.
   The (likely) spurious eigen values and vectors are then eliminated from \code{$vectors} and \code{$values}.
   The use of a real positive value for \code{tol} will eliminate any small valued components.
   With \code{tol}, \code{tolerance.eigen} will stop if any singular values are complex or negative.
}
\seealso{
\code{\link{eigen}}
}
\author{
Derek Beaton
}
\keyword{diagonalization,}
\keyword{eigen}
\keyword{multivariate,}
