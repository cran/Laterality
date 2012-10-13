\name{laterAFCM}
\alias{laterAFCM}

\title{laterAFCM: this function calculates disjunctive table, Burt table and contributions for multiple correspondence analysis (MCA).}

\description{
This function calculates disjunctive table, Burt table and contributions for MCA.}

\usage{
  laterAFCM(data, scannf=FALSE, nf=2, saveDatadisj = FALSE, fileDatadisj = "Datadisj.csv",
  saveSumcolDatadisj = FALSE, fileSumcolDatadisj = "SumcolDatadisj.csv",
  saveDataburt = FALSE, fileDataburt = "Databurt.csv", 
  saveContributions = FALSE, fileContributions = "Contributions.csv")
}

\arguments{
  \item{data}{
A data.frame with the qualitative variables which should be taken in account in the multiple correspondence analysis.
}
  \item{scannf}{
A logical value indicating whether the eigenvalues bar plot should be displayed; see ade4 package (by default scannf = FALSE).
}
  \item{nf}{
If scannf=FALSE, an integer indicating the number of kept axes; see ade4 package (by default nf = 2).
}
  \item{saveDatadisj}{
This arguments permits to save directly the results of the disjunctive table in a .csv file in the workspace of R. If savetable = "csv" there will be "." for the decimal point and a "," for the separator. If savetable = "csv2" there will be "," for the decimal point and a ";" for the separator. (by default savetable = FALSE)
}
  \item{fileDatadisj}{
This argument will work if savetable = "csv" or "csv2". It gives the name of the csv file saved (by default file = "Datadisj.csv")
}
  \item{saveSumcolDatadisj}{
This arguments permits to save directly the results of the sum of the column of the disjunctive table in a .csv file in the workspace of R. If savetable = "csv" there will be "." for the decimal point and a "," for the separator. If savetable = "csv2" there will be "," for the decimal point and a ";" for the separator. (by default savetable = FALSE)
}
  \item{fileSumcolDatadisj}{
This argument will work if savetable = "csv" or "csv2". It gives the name of the csv file saved (by default file = "SumcolDatadisj.csv")
}
  \item{saveDataburt}{
This arguments permits to save directly the results of the Burt table in a .csv file in the workspace of R. If savetable = "csv" there will be "." for the decimal point and a "," for the separator. If savetable = "csv2" there will be "," for the decimal point and a ";" for the separator. (by default savetable = FALSE)
}
  \item{fileDataburt}{
This argument will work if savetable = "csv" or "csv2". It gives the name of the csv file saved (by default file = "Databurt.csv")
}
  \item{saveContributions}{
This arguments permits to save directly the results of the contributions table in a .csv file in the workspace of R. If savetable = "csv" there will be "." for the decimal point and a "," for the separator. If savetable = "csv2" there will be "," for the decimal point and a ";" for the separator. (by default savetable = FALSE)
}
  \item{fileContributions}{
This argument will work if savetable = "csv" or "csv2". It gives the name of the csv file saved (by default file = "Contributions.csv")
}
}

\value{
The function returns results of class "list".
}

\references{
Chessel D., Dufour A.-B. and Dray S., with contributions from Jombart T., Lobry J.R., Ollier S., Pavoine S. and Thioulouse J. Package ade4: Analysis of Ecological Data : Exploratory and Euclidean methods in Environmental sciences.
}

\author{
Borel A., Pouydebat E., Reghem E. <antony.borel@gmail.com>
based on functions from Daniel Chessel, Anne-Beatrice Dufour and Stephane Dray, with contributions from Thibaut Jombart, Jean R. Lobry, Sebastien Ollier, Sandrine Pavoine and Jean Thioulouse. Package ade4: Analysis of Ecological Data : Exploratory and Euclidean methods in Environmental sciences.
}

\note{
If you use this function please cite also ade4-package.
}

\seealso{
\code{\link[ade4:ade4-package]{ade4}},\code{\link[ade4:inertia.dudi]{inertia.dudi}}, \code{\link[ade4:acm.disjonctif]{acm.disjonctif}}, \code{\link[ade4:acm.burt]{acm.burt}}, \code{\link[ade4:dudi.acm]{dudi.acm}}
}

\examples{
  library(ade4)
  data(laterdata)
  
  ## Without saving:
  laterAFCM(laterdata)
  
  ## With saving:
  laterAFCM(laterdata, saveDatadisj="csv2", fileDatadisj="Datadisj.csv"
  , saveSumcolDatadisj="csv2", fileSumcolDatadisj="SumcolDatadisj.csv"
  , saveDataburt="csv2", fileDataburt="Databurt.csv"
  , saveContributions="csv2", fileContributions="Contributions.csv")
}

\keyword{correspondence}
\keyword{AFCM}
\keyword{MCA}
\keyword{laterality}
\keyword{manual preference}
