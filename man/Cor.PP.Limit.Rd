\name{Cor.PP.Limit}
\alias{Cor.PP.Limit}

\title{
Finds the feasible correlation range for a pair of Poisson variables
}
\description{
The function computes the lower and upper bounds of a pairwise correlation between a pair of Poisson variables.
}
\usage{
Cor.PP.Limit(lamvec)
}

\arguments{
  \item{lamvec}{
A vector of marginal rates for a pair of Poisson variables.
}
}

\value{
A vector of two elements. The first element is the lower bound and the second element is the upper bound.
}


\examples{
Cor.PP.Limit(c(0.05, 0.07) )
}
