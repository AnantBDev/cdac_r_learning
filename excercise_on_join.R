setwd("D:/Student Drive/R/Dataset/Datasets")
courses <- read.csv("Courses.csv")
courses
course_schedule <- read.csv("CourseSchedule.csv")
course_schedule

rn_crs <- rename(courses,CourseCode=CourseID) %>% inner_join(course_schedule,by="CourseCode")
rn_crs
