\name{Valid.correlation}
\alias{Valid.correlation}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Computes the lower and upper correlation bounds in the form of two matrices
}
\description{
The function computes the lower and upper bounds for the target correlations based on the marginal rates.
}
\usage{
Valid.correlation(no.pois, no.norm, lamvec)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{no.pois}{
Number of Poisson variables.
}
  \item{no.norm}{
Number of normal variables.
}
  \item{lamvec}{
A vector of marginal rates for Poisson variables.
}
}
\details{
The function returns a list of two matrices. The \code{min} contains the lower bounds and the \code{max} contains the upper bounds of the feasible correlations.
}

\examples{

lamvec= c(0.05,0.07,0.09)
Valid.correlation(no.pois=3, no.norm=3,lamvec)

}

