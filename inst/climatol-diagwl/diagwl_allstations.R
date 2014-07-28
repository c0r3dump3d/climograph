# TODO: Add comment
# 
# Author: ecor
###############################################################################

##### http://science.nature.nps.gov/im/datamgmt/statistics/r/rcourse/session1.cfm
# file diagwl_allstation.R
# 
# This file creates the Walter-Lieth climatic diagram for the dataset 'TrentinoClimate' of 'climograph' package 
#
# author: Emanuele Cordano on 12-01-2012
#
#This program is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with this program.  If not, see <http://www.gnu.org/licenses/>.

###############################################################################




library(climograph)
library(climatol)

data(TrentinoClimate)

station <- unique(TrentinoClimate$station)
TrentinoClimateMetadata <- TrentinoClimateMetadata[which(TrentinoClimateMetadata$ID %in% station),]
Period <- "1981-2010"
wpath_plot <- "/Users/ecor/Dropbox/iasma/RMAWGENdev/climograph/inst/climatol-diagwl/plot/diagwl_"
for (i in (1:nrow(TrentinoClimateMetadata))) {
	
	
	station <- TrentinoClimateMetadata$ID[i]
	alt <- TrentinoClimateMetadata$Elevation[i]
	station_plot <- paste(wpath_plot,station,".pdf",sep="")
	
	
	datcli <- as.datcli(TrentinoClimate,station=station)
	station_name <- paste(station,TrentinoClimateMetadata$Toponym[i],sep=" ")
	
	pdf(station_plot)
	diagwl(datcli,est=station_name,alt=alt,per=Period,mlab="en")
	dev.off()
	
	
}


