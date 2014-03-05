\name{Validate.correlation}
\alias{Validate.correlation}

\title{
Checks the target correlation matrix.
}
\description{
The function checks the validity of the values of pairwise correlations. Additionally, it checks positive definiteness, symmetry and correctness of the dimensions.
}
\usage{
Validate.correlation(no.pois, no.norm, corMat, lamvec)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{no.pois}{
Number of Poisson variables.
}
  \item{no.norm}{
Number of normal variables.
}
  \item{corMat}{
The target correlation matrix which must be positive definite and within the valid limits.
}
  \item{lamvec}{
A vector of marginal rates for Poisson variables.
}
}
\details{
In addition to being positive definite and symmetric, the values of pairwise correlations in the target correlation matrix must also fall within the limits imposed by the marginal distributions in the system. The function ensures that the supplied correlation matrix is valid for simulation. If a violation occurs, an error message is displayed that identifies the violation. The function returns a logical value \code{TRUE} when no such violation occurs.
}

\examples{
\dontrun{
# An example with a valid target correlation matrix.

lamvec= c(0.05,0.07,0.09)
M=c(0.352, 0.265, 0.342, 0.09, 0.141, 0.121, 0.297, 
	-0.022, 0.177, 0.294, -0.044, 0.129, 0.1, 0.354, 0.386)

N=diag(6)
N[lower.tri(N)]=M
TV=N+t(N)
diag(TV)<-1

Validate.correlation(no.pois=3, no.norm=3, corMat=TV, lamvec)


# An example with an invalid target correlation matrix (bound violation).

lamvec= c(0.05,0.07,0.09)
M=c(-0.151, -0.085, -0.11, 0.29, 0.6, 0.132, 0.161, 0.139, 
	-0.088, 0.075, -0.025, -0.293, -0.67, -0.03, 0.61)
N=diag(6)
N[lower.tri(N)]=M
TV1=N+t(N)
diag(TV1)<-1
Validate.correlation(no.pois=3, no.norm=3, corMat=TV1, lamvec)

# Examples with an incorrect dimension specification.

lamvec= c(0.05,0.07,0.09)
Validate.correlation(no.pois=3, no.norm=2, corMat=TV, lamvec)
Validate.correlation(no.pois=2, no.norm=3, corMat=TV, lamvec)

# An example with a non-positive definite correlation matrix.

TV1=TV
TV1[5,1]=TV1[1,5] = 1.5
Validate.correlation(no.pois=3, no.norm=3, corMat=TV1, lamvec)

# An example with a non-symmetric correlation matrix.

TV1=TV
TV1[5,1] = 0.1
Validate.correlation(no.pois=3, no.norm=3, corMat=TV1, lamvec)

# An example with an invalid diagonal element in the correlation matrix.

TV1=TV
TV1[5,5] = 2
Validate.correlation(no.pois=3, no.norm=3, corMat=TV1, lamvec)
}
}

