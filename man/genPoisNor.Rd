\name{genPoisNor}
\alias{genPoisNor}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Generates a data set with Poisson and normal variables
}
\description{
The function simulates multivariate data with Poisson and normal components with a pre-specified correlation matrix and marginal distributions.

}
\usage{
genPoisNor(n, no.norm, no.pois, cmat.star, lamvec, sd.vec, mean.vec)
}

\arguments{
  \item{n}{
Number of rows
}
  \item{no.pois}{
Number of Poisson variables.
}
  \item{no.norm}{
Number of normal variables.
}
  \item{cmat.star}{
The intermediate correlation matrix obtained from \code{\link{cmat.star}} function.
}
  \item{lamvec}{
A vector of marginal rates for Poisson variables.
}
  \item{mean.vec}{
A vector of means for the normal variables.
}
  \item{sd.vec}{
A vector of standard deviations for the normal variables.
}
}

\value{
A matrix of size \eqn{n \times (no.pois + no.norm)}, of which first \code{no.pois} are Poisson variables.
}

\examples{
\dontrun{
  lamvec= c(0.05,0.07,0.09)
  M=c(0.352, 0.265, 0.342, 0.09, 0.141, 0.121, 0.297, 
		-0.022, 0.177, 0.294, -0.044, 0.129, 0.1, 0.354, 0.386)
  N=diag(6)
  N[lower.tri(N)]=M
  TV=N+t(N)
  diag(TV)<-1
  
  cstar = cmat.star(no.pois=3, no.norm=3, TV, lamvec)
  mydata=genPoisNor(n=200, no.norm=3,  no.pois=3, cmat.star=cstar,
		 lamvec, sd.vec=c(1,1,1), mean.vec=c(0,0,0))
}
}

