\name{HIndivabs}
\alias{HIndivabs}

\title{HIndivabs: this function calculates the absolute Handedness Index of each individual for each activity and plots the corresponding histogram.}

\description{
Calculates the absolute Handedness Index of each individual regarding to each task performed and plots the corresponding histogram for each individual. The results can be saved in a .csv file.
}

\usage{
  HIndivabs(data, catch = "Food", hand = "Hand", indiv = "Indiv", 
  RightHand = "R", LeftHand = "L", col = 1:length(levels
  (data[[catch]])), ylab = "Absolute handedness index", 
  main = "Hand preference regarding to the performed task by each individual",
  cex.main = 1, legend.text = FALSE, beside = TRUE, 
  ylim = c(0, 1), vlines = TRUE, hlines = TRUE, legendlocation = TRUE, 
  cex = 1, pt.cex = 2, pch = 15, savetable = FALSE, 
  file = "HIperIndivabs.csv")
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
  \item{cex.main}{
A numeric giving the size of the main title characters.
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
  \item{vlines}{
If vlines = TRUE (by default), vertical lines are drawn between the histogram of each individual.
}
  \item{hlines}{
If hlines = TRUE (by defaut), horizontal lines are drawn at y = 0 for each histogram.
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
  \item{savetable}{
This arguments permits to save directly the results of the function in a .csv file in the workspace of R. If savetable = "csv" there will be "." for the decimal point and a "," for the separator. If savetable = "csv2" there will be "," for the decimal point and a ";" for the separator. (by default savetable = FALSE)
}
  \item{file}{
This argument will work if savetable = "csv" or "csv2". It gives the name of the csv file saved (by default file = "HIperIndivabs.csv")
}
}

\value{
The function returns results of class "matrix".
}

\author{
Borel A., Pouydebat E., Reghem E. <antony.borel@gmail.com>
}

\examples{
  ## With arguments corresponding to the default ones:
  data(laterdata)
  str(laterdata)
  Data<-laterdata
  HIndivabs(Data, catch="Food", hand="Hand", indiv = "Indiv", 
  RightHand = "R", LeftHand = "L", legendlocation=FALSE, legend.text=TRUE)
  ## or
  HIndivabs(Data, legendlocation=FALSE, legend.text=TRUE)
  

  ## With arguments different from the default ones:
  data(lateradata)
  str(lateradata)
  Data<-lateradata
  HIndivabs(Data, catch="Act", hand="HandPref", indiv = "Individual", 
  RightHand = "Right",   LeftHand = "Left", legendlocation=FALSE, legend.text=TRUE)
}

\keyword{HI}
\keyword{handedness index}
\keyword{zscore}
\keyword{laterality}
\keyword{manual preference}
