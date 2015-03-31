\name{later}
\alias{later}

\title{later: this function calculates handedness index (HI) and z-score.}

\description{
Returns an array with x dimensions corresponding to each activities performed. For each individual it will return the total of left and right hand grasp (and eventually other data like "bimanual" for example). The HI and the z-score is also returned for each individual with the corresponding p-value and each individual is classified as right handed (R), left handed (L) or ambiguous (A). These results can be saved directly in a .csv file (see "savetable" below).
}

\usage{
  later(data, catch = "Food", indiv = "Indiv", hand = "Hand",
  RightHand = "R", LeftHand = "L", savetable = FALSE, 
  file = "HIz.csv")
}

\arguments{
  \item{data}{
The object (data.frame) containing your data with at least the qualitative variables concerning the hand used (hand), the individuals (indiv) and the activity performed (catch). 
}
  \item{catch}{
The name/header of the column concerning the activity carried out (by default "Food"), if you made individuals catching different objects (ob1, ob2, ob3, ob4) and named the variale "ObjectCatched", write catch = "ObjectCatched".
}
  \item{indiv}{
The name/header of the column concerning the individuals (by default "Indiv").
}
  \item{hand}{
The name/header of the column concerning the hand used (by default "Hand").
}
  \item{RightHand}{
The code used in the database (and particularly in the "hand" variable) for "RightHand". If "RightHand" is coded as "Right" write RightHand = "Right" (by default "R").
}
  \item{LeftHand}{
The code used in the database (and particularly in the "hand" variable) for "LeftHand". If "LeftHand" is coded as "Left" write LeftHand = "Left" (by default "L").
}
  \item{savetable}{
This arguments permits to save directly the results of the function in a .csv file in the workspace of R. If savetable = "csv" there will be "." for the decimal point and a "," for the separator. If savetable = "csv2" there will be "," for the decimal point and a ";" for the separator. (by default savetable = FALSE)
}
  \item{file}{
This argument will work if savetable = "csv" or "csv2". It gives the name of the csv file saved (by default file = "HIz.csv")
}
}

\details{
The order of the columns of the database doesn't matter, the important is to give the correct code and header name to each argument of the function if the default ones are not appropriate.
}

\value{
The function returns results of class "array".
}

\references{
Hopkins W.D.(1999) On the Other Hand: Statistical Issues in the Assessment and Interpretation of Hand Preference Data in Nonhuman Primates. International Journal of Primatology 20(6):851-866
}

\author{
Borel A., Pouydebat E., Reghem E. <antony.borel@gmail.com>
}

\examples{
  ## With arguments corresponding to the default ones:
  data(laterdata)
  str(laterdata)
  Data<-laterdata
  later(Data, catch ="Food", indiv="Indiv", hand="Hand", 
  RightHand="R", LeftHand="L", savetable = FALSE, file = "HIz.csv")
  ## or
  later(Data)
  
  ## With arguments different from the default ones:
  data(lateradata)
  str(lateradata)
  Data<-lateradata
  later(Data, catch ="Act", indiv="Individual", hand="HandPref", 
  RightHand="Right", LeftHand="Left", savetable = FALSE, 
  file = "HIz.csv")
}

\keyword{HI}
\keyword{handedness index}
\keyword{zscore}
\keyword{laterality}
\keyword{manual preference}
