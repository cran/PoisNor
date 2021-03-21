\name{PoisNor-package}
\alias{PoisNor-package}
\alias{PoisNor}
\docType{package}
\title{
Simultaneous Generation of Multivariate Data with Poisson and Normal Marginals
}
\description{
	The package implements a procedure for simultaneous generation of multivariate data with count and continuous variables with a pre-specified correlation matrix. The count and continuous variables are assumed to have Poisson and normal marginals, respectively. The data generation mechanism is a combination of the normal to anything principle and a connection between Poisson and normal correlations in the mixture. Data generation is accomplished by first calculating an intermediate correlation matrix (\code{\link{cmat.star}}) which is used to generate a sample from multivariate normal distribution. Then, the first few components (corresponding to number of Poisson variables) are transformed to Poisson variables via the inverse CDF method. The resulting data are composed of a mixture of Poisson and normal variables that conform with pre-specified marginal distributions and correlation structure.\cr\cr
The function \code{\link{Valid.correlation}} returns the lower and upper bounds of the correlation coefficients of Poisson-Poisson and Poisson-normal pairs given their marginal distributions, i.e. returns the range of feasible pairwise correlations. The function \code{\link{Validate.correlation}} checks the validity of the values of pairwise correlations. Additionally, it checks positive definiteness, symmetry and correctness of the dimensions. The engine function \code{\link{genPoisNor}} generates mixed data in accordance with the specified marginal and correlational quantities.
}

\details{
\tabular{ll}{
Package: \tab PoisNor\cr
Type: \tab Package\cr
Version: \tab 1.3.3\cr
Date: \tab 2021-03-21\cr
License: \tab GPL\cr
}

}
\author{
Anup Amatya, Hakan Demirtas, Ran Gao

Maintainer: Ran Gao <rgao8@uic.edu>

}