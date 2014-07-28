\name{as.datcli}
\alias{as.datcli}
\title{as.datcli}
\usage{
as.datcli(df, station = "T0009", MonthField = "month", PrecField = "P",
  MinTempField = "Tn", MaxTempField = "Tx", MeanTempField = "Tm",
  AbsMinTempField = "AbsTn", StationField = "station")
}
\arguments{
  \item{df}{data frame}

  \item{station}{name of the considered station}

  \item{MonthField}{character string for month field in
  \code{df}. Default is \code{"month"}.}

  \item{PrecField}{character string for Mean Precipitation
  field in \code{df}. Default is \code{"P"}.}

  \item{MinTempField}{character string for Mean Daily
  Minimum Temperature field in \code{df}. Default is
  \code{"Tn"}.}

  \item{MaxTempField}{character string for Mean Daily
  Maximum Temperature field in \code{df}. Default is
  \code{"Tx"}.}

  \item{MeanTempField}{character string for Mean Daily
  Maximum Temperature field in \code{df}. Default is
  \code{"Tm"}.}

  \item{AbsMinTempField}{character string for Absolute
  Monthly Minimum Temperature field in \code{df}. Default
  is \code{"AbsTn"}.}

  \item{StationField}{character string for Station field in
  \code{df}. Default is \code{"station"}.}
}
\description{
Tranforms a Data Frame (see example dataset) into a data
frame format like 'datcli' in 'climatol' package
}
\examples{
library(climograph)
library(climatol)

data(TrentinoClimate)


station <- "T0129"
datcli <- as.datcli(TrentinoClimate,station=station)
diagwl(datcli,est=station,alt=100,per="Period",mlab="en")
}
\seealso{
\url{http://www.climatol.eu/},
\url{http://www.zoolex.org/walter.html}
}

