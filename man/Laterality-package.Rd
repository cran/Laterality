\name{Laterality-package}
\alias{Laterality-package}
\alias{Laterality}
\docType{package}
\title{Laterality}

\description{
This package permits to calculate handedness index (HI) and z-score for each individual for each task performed. It plots histograms of the different type of grasp (Left, right, bimanual...) for each kind of activity but also of the Handedness Index of each individual for each activity. The mean Handedness Index and the absolute HI and absolute mean HI can also be calculated. Finally some functions (based on ade4-package functions) calculates disjunctive table, Burt table and contributions for MCA and then plots multiple correspondence analysis graphs.
}

\details{
\tabular{ll}{
Package: \tab Laterality\cr
Type: \tab Package\cr
Version: \tab 0.9\cr
Date: \tab 2012-10-13\cr
License: \tab GPL (>=2.0)\cr
LazyLoad: \tab yes\cr
}
This package is particularly useful to calculate and plot the different indexes (HI, z-score, mean HI, absolute HI) commonly used in laterality studies of non-human primates.
}

\author{Borel A., Pouydebat E., Reghem E. <antony.borel@gmail.com>}

\references{
Chessel D., Dufour A.-B. and Dray S., with contributions from Jombart T., Lobry J.R., Ollier S., Pavoine S. and Thioulouse J. Package ade4: Analysis of Ecological Data : Exploratory and Euclidean methods in Environmental sciences.

Hopkins W.D.(1999) On the Other Hand: Statistical Issues in the Assessment and Interpretation of Hand Preference Data in Nonhuman Primates. International Journal of Primatology 20(6):851-866.
}

\keyword{HI}
\keyword{handedness index}
\keyword{zscore}
\keyword{laterality}
\keyword{manual preference}
\keyword{correspondence}
\keyword{AFCM}
\keyword{MCA}

\seealso{
    \code{\link[ade4:ade4-package]{ade4}} the multiple correspondence analysis functions are based on ade4 package.
}

\examples{
  ### later function ###
  ## With arguments corresponding to the default ones:
  data(laterdata)
  str(laterdata)
  Data<-laterdata
  later(Data, catch ="Food", indiv="Indiv", hand="Hand", 
  RightHand="R", LeftHand="L", savetable = FALSE)
  ## or
  later(Data)
  
  ## With arguments different from the default ones:
  data(lateradata)
  str(lateradata)
  Data<-lateradata
  later(Data, catch ="Act", indiv="Individual", hand="HandPref",
  RightHand="Right", LeftHand="Left", savetable = FALSE)
  
  ### HIndiv function ###
  ## With arguments corresponding to the default ones:
  str(laterdata)
  Data<-laterdata
  HIndiv(Data, catch="Food", hand="Hand", indiv = "Indiv", 
  RightHand = "R", LeftHand = "L", legendlocation=FALSE, legend.text=TRUE)
  ## or
  HIndiv(Data, legendlocation=FALSE, legend.text=TRUE)
  
  ## With arguments different from the default ones:
  str(lateradata)
  Data<-lateradata
  HIndiv(Data, catch="Act", hand="HandPref", indiv = "Individual", 
  RightHand = "Right", LeftHand = "Left", legendlocation=FALSE, legend.text=TRUE)
  
  ### HImeanact function ###
  ## With arguments corresponding to the default ones:
  str(laterdata)
  Data<-laterdata
  HImeanact(Data, catch="Food", hand="Hand", indiv = "Indiv", 
  RightHand = "R", LeftHand = "L")
  ## or
  HImeanact(Data)
  
  ## With arguments different from the default ones:
  str(lateradata)
  Data<-lateradata
  HImeanact(Data, catch="Act", hand="HandPref", indiv = "Individual",
  RightHand = "Right", LeftHand = "Left")
}
