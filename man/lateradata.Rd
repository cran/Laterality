\name{lateradata}
\alias{lateradata}
\docType{data}

\title{
lateradata: data.frame for later-package examples
}

\description{
This data.frame is a fake example made up to illustrate later-package.
}

\usage{data(lateradata)}
\format{
  A data frame with 674 observations on the following 5 variables.
  \describe{
    \item{\code{Individual}}{a factor with levels \code{Airly} \code{Biwa} \code{Doma} \code{Dudy} \code{Gogo} \code{Neil} \code{Olix} \code{Rali} \code{Raps} \code{Rexen} \code{Titi}}
    \item{\code{Sex}}{a factor with levels \code{f} \code{m}}
    \item{\code{Act}}{a factor with levels \code{Catching} \code{Grasping} \code{Hunting}}
    \item{\code{HandPref}}{a factor with levels \code{Bimanual} \code{Left} \code{Right}}
    \item{\code{PostureCorp}}{a factor with levels \code{A} \code{Bip} \code{BipGrill} \code{BipT} \code{NonObs} \code{T} \code{TT}}
  }
}

\source{
Fake data.
}

\examples{
data(lateradata)
str(lateradata)
}

\keyword{datasets}
