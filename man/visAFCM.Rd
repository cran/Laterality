\name{visAFCM}
\alias{visAFCM}

\title{visAFCM: this function plots multiple correspondence analysis graphs based on ade4 package functions.}

\description{
Plots multiple correspondence analysis graphs. The graphs can be unique or multiple which is sometimes necessary for better lisibility.
}

\usage{
  visAFCM(data, scannf=FALSE, nf=2, xax = 1, yax = 2, clab.row = FALSE, clab.col = 1,
  permute = FALSE, posieig = "top", sub = NULL, graphstyle = "unique",
  graphrow = 1, graphcol = 3, cpoint = 1, clabel = 2, csub = 2)
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
\code{\link[ade4:scatter.dudi]{scatter.dudi}}, \code{\link[ade4:s.class]{s.class}}, \code{\link[ade4:s.chull]{s.chull}}
}

\examples{
  data(laterdata)
  ## "unique" graph:
  visAFCM(laterdata)
  
  ## "multiple a" graph:
  visAFCM(laterdata, xax = 1, yax = 2, clab.row = FALSE, clab.col = 1,
  permute = FALSE, posieig = "top", sub = NULL, graphstyle = "multiple a",
  graphrow = 2, graphcol = 3, cpoint=3)
  
  ## "multiple b" graph:
  visAFCM(laterdata, xax = 1, yax = 2, clab.row = FALSE, clab.col = 1,
  permute = FALSE, posieig = "top", sub = NULL, graphstyle = "multiple b",
  graphrow = 2, graphcol = 3)
}

\keyword{correspondence}
\keyword{AFCM}
\keyword{MCA}
\keyword{laterality}
\keyword{manual preference}
