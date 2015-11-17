## download Periodic Data from a website
##
## this is part of a machine learning project
## to analyze road conditions automatically
##

setwd("/Users/winstonsaunders/Documents/")

setwd(paste0(getwd(), "/Road_Images"))
image_save_dir<-paste0(getwd(), "/Image_Data")

## number of days to record images
day_record<-2
## period in minutes between image grabs
minutes<-10

number_of_files<-day_record*24*(60/minutes)

cat(paste("The program will download", as.character(number_of_files ) , "files over", day_record,"days \n"))

for (i in 1:day_record*24*60/minutes){
    Sys.sleep(60*minutes)
    cat(paste("Read: ", as.POSIXlt(Sys.time()), "\n"))
    
    ## download file
    download.file("http://tripcheck.com/RoadCams/cams/Santiam%20Pass_pid2728.JPG?rand=567",
                  destfile=paste0(image_save_dir,"/",Sys.time(), "_santiam.jpg"),mode = 'wb')
    
}

cat(paste("End:  ",as.POSIXlt(Sys.time()), "\n"))

