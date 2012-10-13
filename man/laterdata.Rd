\name{laterdata}
\alias{laterdata}
\docType{data}

\title{
laterdata: data.frame for later-package examples
}

\description{
This data.frame is a fake example made up to illustrate later-package.
}

\usage{data(laterdata)}
\format{
  A data frame with 674 observations on the following 5 variables.
  \describe{
    \item{\code{Indiv}}{a factor with levels \code{Airly} \code{Biwa} \code{Doma} \code{Dudy} \code{Gogo} \code{Neil} \code{Olix} \code{Rali} \code{Raps} \code{Rexen} \code{Titi}}
    \item{\code{Sex}}{a factor with levels \code{f} \code{m}}
    \item{\code{Food}}{a factor with levels \code{Apple} \code{Cricket} \code{Worm}}
    \item{\code{Hand}}{a factor with levels \code{Bi} \code{L} \code{R}}
    \item{\code{PostureCorp}}{a factor with levels \code{A} \code{Bip} \code{BipGrill} \code{BipT} \code{NonObs} \code{T} \code{TT}}
  }
}

\source{
Fake data.
}

\examples{
data(laterdata)
str(laterdata)
}

\keyword{datasets}
