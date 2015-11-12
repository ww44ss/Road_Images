## download Periodic Data
##
## this is a machine learning project
## to automatically analyze road conditions
##

setwd("/Users/winstonsaunders/Documents/")

setwd(paste0(getwd(), "/Road_Images"))
image_save_dir<-paste0(getwd(), "/Image_Data")

## number of days to record images
day_record<-3
## period in minutes between image grabs
minutes<-30

for (i in 1:day_record*24*60/minutes){
    Sys.sleep(60*minutes)
    cat(paste("Read: ", as.POSIXlt(Sys.time()), "\n"))
    
    ## download file
    download.file("http://tripcheck.com/RoadCams/cams/Santiam%20Pass_pid2728.JPG?rand=567",
                  destfile=paste0(image_save_dir,"/",Sys.time(), "santiam.jpg"),mode = 'wb')
    
}

cat("End:  ",Sys.time(), "\n")

