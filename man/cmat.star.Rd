\name{cmat.star}
\alias{cmat.star}

\title{
Computes the correlation of intermediate multivariate normal data before subsequent inverse CDF transformation
}
\description{
The function computes an intermediate correlation matrix which leads to the target correlation matrix after inverse CDF transformation of the samples generated from a multivariate normal distribution with the intermediate correlation matrix. 
}
\usage{
cmat.star(no.pois, no.norm, corMat, lamvec)
}

\arguments{
  \item{no.pois}{
Number of Poisson variables in the data.
}
  \item{no.norm}{
Number of normal variables in the data.
}
  \item{corMat}{
A positive definite target correlation matrix whose entries are within the valid limits.
}
  \item{lamvec}{
Vector of Poisson rates (means).
}
}

\value{
An intermediate correlation matrix of size \eqn{(no.pois + no.norm) \times (no.pois+ no.norm) }
}


\seealso{
 \code{\link{Validate.correlation}}
}
\examples{
\dontrun{
lamvec= c(0.5,0.7,0.9)
M=c(0.352, 0.265, 0.342, 0.09, 0.141, 0.121, 0.297, 
  -0.022, 0.177, 0.294, -0.044, 0.129, 0.1, 0.354, 0.386)

N=diag(6)
N[lower.tri(N)]=M
TV=N+t(N)
diag(TV)<-1

cstar = cmat.star(no.pois=3, no.norm=3, TV, lamvec)
}
}
\references{

I. Yahav and G. Shmueli (2012). On generating multivariate poisson data in management science applications. \emph{Applied Stochastic Models in Business and Industry}; 28(1):91-102.

}

