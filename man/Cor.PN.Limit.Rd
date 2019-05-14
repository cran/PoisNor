\name{Cor.PN.Limit}
\alias{Cor.PN.Limit}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Finds the feasible correlation range for a pair of Poisson and normal variables
}
\description{
The function computes the lower and upper bounds of a pairwise correlation between a Poisson and a normal variable via the method of Demirtas and Hedeker (2011).
}
\usage{
Cor.PN.Limit(lam)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{lam}{
A marginal rate for a Poisson variable of the pair.
}
}

\value{
A vector of two elements. The first element is the lower bound and the second element is the upper bound.
}
\references{
Demirtas, H., Hedeker, D. (2011). A practical way for computing approximate lower and upper correlation bounds. \emph{The American Statistician}; 65(2):104-109.
}


\examples{
Cor.PN.Limit(0.05)

}

