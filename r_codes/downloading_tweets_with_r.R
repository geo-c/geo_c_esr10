#Loading packages
require(tweet2r)
require(sp)
require(maptools)
require(ggmap)

#set your working directory to a temporrary file
td <- "C:/Users/User/Documents/GitHub/geo_c_esr10/geolocated_tweets_sample"
setwd(td)
dir()

#definition of the start time and end time
t_start<-"2017-07-28 05:22:00"
t_end<-"2017-08-14 05:21:59"


#get bounding box as a polygon
coor=c(-9.503,38.35,-8.4925,39)

fileprefix="geo_twe_LIS_"
#running the function
tweet2r(t_start=t_start,t_end=t_end,bbox=coor,fileprefix=fileprefix)

valjson(fileprefix)
tweets<-t2DataFrame(fileprefix)