% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{is.empty.matrix}
\alias{is.empty.matrix}
\title{\code{is.empty.matrix}: test if a matrix contains all 0s.}
\usage{
is.empty.matrix(x, tol = .Machine$double.eps)
}
\arguments{
\item{x}{A matrix to test.}

\item{tol}{Tolerance precision to eliminate all abs(x) values below \code{tol}. Default is \code{.Machine$double.eps}.}
}
\value{
A boolean. TRUE if the matrix contains all 0s, FALSE if the matrix does not.
}
\description{
\code{is.empty.matrix} takes a matrix and tests if it contains all 0s.
}
