\name{HImeanact}
\alias{HImeanact}

\title{HImeanact: this function calculates the mean Handedness Index for each activity.}

\description{
Calculates the mean Handedness Index for each task performed and plots the corresponding histogram. The results can be saved in a .csv file.
}

\usage{
  HImeanact(data, catch = "Food", hand = "Hand", indiv = "Indiv", 
  RightHand = "R", LeftHand = "L", col = 2:((length(levels
  (data[[catch]]))) + 1), ylab = "Mean handedness index", 
  main = "Hand preference regarding to the performed task", 
  legend.text = FALSE, beside = TRUE, ylim = c(-1, 1), names.arg=levels(data[[catch]]), 
  legendlocation = FALSE, standarderror=TRUE, cex = 1, pt.cex = 2, pch = 15, 
  horiz = FALSE, savetable = FALSE, file = "HImeanPerAct.csv")
}

\arguments{
  \item{data}{
The object (data.frame) containing your data with at least the qualitative variables concerning the hand used (hand), the individuals (indiv) and the activity performed (catch). 
}
  \item{catch}{
The name/header of the column concerning the activity carried out (by default "Food"), if you made individuals catching different objects (ob1, ob2, ob3, ob4) and named the variale "ObjectCatched", write catch = "ObjectCatched".
}
  \item{hand}{
The name/header of the column concerning the hand used (by default "Hand").
}
  \item{indiv}{
The name/header of the column concerning the individuals (by default "Indiv").
}
  \item{RightHand}{
The code used in the database (and particularly in the "hand" variable) for "RightHand". If "RightHand" is coded as "Right" write RightHand = "Right" (by default "R").
}
  \item{LeftHand}{
The code used in the database (and particularly in the "hand" variable) for "LeftHand". If "LeftHand" is coded as "Left" write LeftHand = "Left" (by default "L").
}
  \item{col}{
A list of color for the bars of the histogram. By default it will automatically find the number of colors you need but it's using the 8 colors of the default palette of R. If you need more don't forget to select another palette or to name the color you want to add.
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
  \item{ylim}{
The minimum and maximum value of the y axis. For example ylim = c(0,500). By default (ylim = NULL) the values are automatically selected.
}
  \item{names.arg}{
Plot the name of the arguments under each bar of the barplot. If names.args=FALSE, one should choose to turn to TRUE legend.text or legendlocation.
}
  \item{legendlocation}{
If TRUE you will have to click where you want to place the legend after the plot is done.
}
  \item{standarderror}{
If standarderror=TRUE standard error bars will be plotted for each bar of the barplot.
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
  \item{horiz}{
If horiz = TRUE, the legend will be displayed horizontally (by default). If horiz = FALSE, the legend will be displayed vertically.
}
  \item{savetable}{
This arguments permits to save directly the results of the function in a .csv file in the workspace of R. If savetable = "csv" there will be "." for the decimal point and a "," for the separator. If savetable = "csv2" there will be "," for the decimal point and a ";" for the separator. (by default savetable = FALSE)
}
  \item{file}{
This argument will work if savetable = "csv" or "csv2". It gives the name of the csv file saved (by default file = "HImeanPerAct.csv")
}
}

\details{
The mean HI is calculated from the HI of each task performes by each individual.
}


\value{
The function returns results of class "data.frame".
}

\author{
Borel A., Pouydebat E., Reghem E. <antony.borel@gmail.com>
}

\examples{
## With arguments corresponding to the default ones:
  data(laterdata)
  str(laterdata)
  Data<-laterdata
  HImeanact(Data, catch="Food", hand="Hand", indiv = "Indiv", 
  RightHand = "R", LeftHand = "L", legendlocation=FALSE)
  ## or
  HImeanact(Data)

  ## With arguments different from the default ones:
  data(lateradata)
  str(lateradata)
  Data<-lateradata
  HImeanact(Data, catch="Act", hand="HandPref", indiv = "Individual", 
  RightHand = "Right",     LeftHand = "Left")
}

\keyword{HI}
\keyword{handedness index}
\keyword{zscore}
\keyword{laterality}
\keyword{manual preference}
