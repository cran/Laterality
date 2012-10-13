\name{laterhist}
\alias{laterhist}

\title{laterhist: this function plots an histogram of the different type of grasp (Left, right, bimanual...) for each kind of activity.}

\description{
The laterhist function counts the nuber of occurences of each type of grasp and plot the corresponding histogram for each task performed.
}

\usage{
  laterhist(data, catch = "Food", hand = "Hand", 
  col = 1:nlevels(data[[hand]]), ylim = NULL, 
  ylab = "Number of grips", 
  main = "Type of grips regarding to the performed task", 
  legend.text = FALSE, beside = TRUE, legendlocation = TRUE, 
  cex = 1, pt.cex = 2, pch = 15)
}

\arguments{
  \item{data}{
the object (data.frame) containing your data with at least the qualitative variables concerning the hand used (hand) and the activity performed (catch).
}
  \item{catch}{
The name/header of the column concerning the activity carried out (by default "Food"), if you made individuals catching different objects (ob1, ob2, ob3, ob4) and named the variale "ObjectCatched", write catch = "ObjectCatched".
}
  \item{hand}{
The name/header of the column concerning the hand used (by default "Hand").
}
  \item{col}{
A list of color for the bars of the histogram. By default it will automatically find the number of colors you need but it's using the 8 colors of the default palette of R. If you need more don't forget to select another palette or to name the color you want to add.
}
  \item{ylim}{
The minimum and maximum value of the y axis. For example ylim = c(0,500). By default (ylim = NULL) the values are automatically selected.
}
  \item{ylab}{
A title for the y axis.
}
  \item{main}{
The main title of the graph.
}
  \item{legend.text}{
If legend.text = TRUE, the legend will be automatically placed on the graph. If legend.text = FALSE, no legend will appear except if legendlocation = TRUE.
}
  \item{beside}{
If FALSE, the columns of height are portrayed as stacked bars, and if TRUE the columns are portrayed as juxtaposed bars.
}
  \item{legendlocation}{
If TRUE you will have to click where you want to place the legend after the plot is done.
}
  \item{cex}{
A numeric giving the size of the legend characters.
}
  \item{pt.cex}{
A numeric giving the size of the legend points.
}
  \item{pch}{
This can either be a single character or an integer code for one of a set of graphics symbols. This will be applied to the legend. (By default pch = 15 which is square).
}
}

\references{
Meguerditchian A., Calcutt S.E., Lonsdorf E.V., Ross S.R. and Hopkins W.D. (2010) Brief communication: Captive Gorillas are right-handed for bimanual feeding. American Journal of Physical Anthropology 141:638-645. 
}

\author{
Borel A., Pouydebat E., Reghem E. <antony.borel@gmail.com>
}

\seealso{
  \code{\link[graphics:barplot]{barplot}}
}

\examples{
  ## With arguments corresponding to the default ones:
  data(laterdata)
  str(laterdata)
  Data<-laterdata
  laterhist(Data, catch ="Food", hand="Hand", 
  legend.text = TRUE, legendlocation = FALSE)
  ## or
  laterhist(Data, legend.text = TRUE, legendlocation = FALSE)
  
  ## With arguments different from the default ones:
  data(lateradata)
  str(lateradata)
  Data<-lateradata
  laterhist(Data, catch ="Act", hand="HandPref", legend.text = TRUE, legendlocation = FALSE)
}

\keyword{HI}
\keyword{handedness index}
\keyword{zscore}
\keyword{laterality}
\keyword{manual preference}
