\name{peguy}
\alias{peguy}
\title{Peguy Climograph}
\usage{
peguy(data = NULL, TemperatureTriangleCoords = c(0, 23.4, 15),
  PrecipitationTriangleCoords = c(0, 40, 200), ylab = "Precipitation[mm]",
  xlab = "Mean Temperature [degC]", lambda.label = 1.75,
  climate.label = c("Temperate", "Cool", "Arid", "Hot"), xyField = c("Tn",
  "P"), pointsField = "month", StationsField = "station",
  color.scale = "monthly", ...)
}
\arguments{
  \item{data}{input dataset with climatological monthly
  weather data}

  \item{TemperatureTriangleCoords}{Temperature coordinates
  for triangle vertices in the Peguy Climograph. Default
  coordinates are expressed in Celsius Degrees.}

  \item{PrecipitationTriangleCoords}{Precipitation
  coordinates for triangle vertices in the Peguy
  Climograph. Default coordinates are expressed in
  millimeters.}

  \item{xlab,ylab}{xy axis labels}

  \item{lambda.label}{numeric value used to locate climate
  attribute labels}

  \item{climate.label}{string vector containing climate
  attribute. Default is \code{c("Temperate", "Cold",
  "Arid", "Hot")}. Alternatively in Italian: it is
  \code{c("Temperato","Freddo","Arido","Caldo")}}

  \item{xyField}{column names of \code{data} for the x and
  y variables used in the Peguy Climate Diagram.}

  \item{pointsField}{column name of \code{data} containing
  the fields to be represent with different point colors.
  Default is \code{month}.}

  \item{StationsField}{column name of \code{data}
  containing the fields with station ID names. Default is
  \code{station}.}

  \item{color.scale}{character scale indicating a use of a
  specific color scale. Default is \code{monthly}.}

  \item{...}{further arguments}
}
\description{
Representation of Peguy Climograph from monthly weather
data (Mean Temperature, Precipitation)
}
\examples{
library(climograph)

data(TrentinoClimate)
p <- peguy(data=TrentinoClimate[TrentinoClimate$station \%in\% unique(TrentinoClimate$station)[1:3],])
}

