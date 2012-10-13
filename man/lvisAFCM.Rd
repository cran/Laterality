\name{lvisAFCM}
\alias{lvisAFCM}

\title{lvisAFCM: this function calculates disjonctive table, blurt table and contributions for AFCM and plots the corresponding graphs.}

\description{
This function combines "laterAFCM" and "visAFCM" functions. It calculates disjunctive table, Burt table and contributions for MCA and then plots multiple correspondence analysis graphs.
}

\usage{
  lvisAFCM(data, scannf=FALSE, nf=2, xax = 1, yax = 2, clab.row = FALSE, clab.col = 1,
  permute = FALSE, posieig = "top", sub = NULL, 
  graphstyle = "unique", graphrow = 1, graphcol = 3, cpoint = 1, 
  clabel = 2, csub = 2, saveDatadisj = FALSE, 
  fileDatadisj = "Datadisj.csv", saveSumcolDatadisj = FALSE, 
  fileSumcolDatadisj = "SumcolDatadisj.csv", saveDataburt = FALSE, 
  fileDataburt = "Databurt.csv", saveContributions = FALSE, 
  fileContributions = "Contributions.csv")
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
  \item{xax}{
A numeric giving the number of the first axis to plot (by default xax = 1).
}
  \item{yax}{
A numeric giving the number of the second axis to plot (by default yax = 2).
}
  \item{clab.row}{
A character size for the rows (by default clab.row = FALSE).
}
  \item{clab.col}{
A character size for the columns (by default clab.col = 1).
}
  \item{permute}{
If FALSE, the rows are plotted by points and the columns by arrows. If TRUE it is the opposite (by default permute = FALSE).
}
  \item{posieig}{
If "top" the eigenvalues bar plot is upside, if "bottom" it is downside, if "none" no plot. "topleft" and "bottomleft" are also possible (by default posieig = "top").
}
  \item{sub}{
A string of characters to be inserted as legend (by default sub = NULL).
}
  \item{graphstyle}{
Three kinds of graph can be selected. If graphstyle = "unique", all variables will be plotted on the same graph. If graphstyle = "multiple a" each variable will be plotted in different graphs (cf. graphrow and graphcol) with inertia ellipse. If graphstyle = "multiple b" each variable will be plotted in different graphs (cf. graphrow and graphcol) with convex hulls.
}
  \item{graphrow}{
The number of row for multiple graph. If one deal with 6 variables it is recommended to write graphrow = 2 and graphcol = 3.
}
  \item{graphcol}{
The number of column for multiple graph. If one deal with 6 variables it is recommended to write graphrow = 2 and graphcol = 3.
}
  \item{cpoint}{
A numeric for the size of the points.
}
  \item{clabel}{
A numeric for the size of the labels.
}
  \item{csub}{
A numeric for the size of the name of the variable written at the bottom of each chart.
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
Daniel Chessel, Anne-Beatrice Dufour and Stephane Dray, with contributions from Thibaut Jombart, Jean R. Lobry, Sebastien Ollier, Sandrine Pavoine and Jean Thioulouse. Package ade4: Analysis of Ecological Data : Exploratory and Euclidean methods in Environmental sciences.
}

\author{
Borel A., Pouydebat E., Reghem E. <antony.borel@gmail.com>
based on functions from Daniel Chessel, Anne-Beatrice Dufour and Stephane Dray, with contributions from Thibaut Jombart, Jean R. Lobry, Sebastien Ollier, Sandrine Pavoine and Jean Thioulouse. Package ade4: Analysis of Ecological Data : Exploratory and Euclidean methods in Environmental sciences.
}

\note{
If you use this function please cite also ade4-package.
}

\seealso{
    \code{\link[ade4:ade4-package]{ade4}},\code{\link[ade4:inertia.dudi]{inertia.dudi}}, \code{\link[ade4:acm.disjonctif]{acm.disjonctif}}, \code{\link[ade4:acm.burt]{acm.burt}}, \code{\link[ade4:dudi.acm]{dudi.acm}}, \code{\link[ade4:scatter.dudi]{scatter.dudi}}, \code{\link[ade4:s.class]{s.class}}, \code{\link[ade4:s.chull]{s.chull}}
}

\examples{
  data(laterdata)
  ## Without saving:
  ## "unique" graph:
  lvisAFCM(laterdata)
  
  ## "multiple a" graph:
  lvisAFCM(laterdata, xax = 1, yax = 2, clab.row = FALSE, 
  clab.col = 1,permute = FALSE, posieig = "top", sub = NULL, 
  graphstyle = "multiple a", graphrow = 2, graphcol = 3, 
  cpoint=3)
  
  ## "multiple b" graph:
  lvisAFCM(laterdata, xax = 1, yax = 2, clab.row = FALSE, 
  clab.col = 1,permute = FALSE, posieig = "top", sub = NULL, 
  graphstyle = "multiple b", graphrow = 2, graphcol = 3)
  
  ## With saving:
  ## "unique" graph:
  lvisAFCM(laterdata, saveDatadisj="csv2", fileDatadisj="Datadisj.csv"
  , saveSumcolDatadisj="csv2", fileSumcolDatadisj="SumcolDatadisj.csv"
  , saveDataburt="csv2", fileDataburt="Databurt.csv"
  , saveContributions="csv2", fileContributions="Contributions.csv")
  
  ## "multiple a" graph:
  lvisAFCM(laterdata, xax = 1, yax = 2, clab.row = FALSE, clab.col = 1,
  permute = FALSE, posieig = "top", sub = NULL, graphstyle = "multiple a",
  graphrow = 2, graphcol = 3, cpoint=3, saveDatadisj="csv2",
  fileDatadisj="Datadisj.csv", saveSumcolDatadisj="csv2",
  fileSumcolDatadisj="SumcolDatadisj.csv", saveDataburt="csv2",
  fileDataburt="Databurt.csv", saveContributions="csv2",
  fileContributions="Contributions.csv")
  
  ## "multiple b" graph:
  lvisAFCM(laterdata, xax = 1, yax = 2, clab.row = FALSE, clab.col = 1,
  permute = FALSE, posieig = "top", sub = NULL, graphstyle = "multiple b",
  graphrow = 2, graphcol = 3, saveDatadisj="csv2", 
  fileDatadisj="Datadisj.csv", saveSumcolDatadisj="csv2",
  fileSumcolDatadisj="SumcolDatadisj.csv", saveDataburt="csv2",
  fileDataburt="Databurt.csv", saveContributions="csv2",
  fileContributions="Contributions.csv")
}

\keyword{correspondence}
\keyword{AFCM}
\keyword{MCA}
\keyword{laterality}
\keyword{manual preference}
