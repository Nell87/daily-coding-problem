#### Problem #004 [Hard - Stripe - #### ------------------------------------------

# Given an array of integers, find the first missing positive integer in linear 
# time and constant space. In other words, find the lowest positive integer that 
# does not exist in the array. The array can contain duplicates and negative 
# numbers as well.

# For example, the input [3, 4, -1, 1] should give 2. 
# The input [1, 2, 0] should give 3.You can modify the input array in-place.

#Load Libraries: p_load can install, load,  and update packages
if(require("pacman")=="FALSE"){
  install.packages("pacman")
} 

pacman::p_load(dplyr)

# Initialize some variables 
vector_example1<-c(3,4,-1,1)
vector_example2<-c(1,2,0)
vector_example3<-c(-8,-6,0,3,2,1,56)
vector_example4<-c(-3,0,13)

# Create the function 
find_lowestvalue<-function(vector){
    
    # Let's reorganize them 
    temp_vector<-sort(vector)
    
    # Let's remove the negative numbers
    temp_vector<-temp_vector[which(temp_vector >0)]
    
    # Let's create a vector from 1 to the length of the temp_vector
    seq_vector<- seq(from=1, to=length(temp_vector)+1)
    
    # Let's create a vector with the different numbers and let's choose the lowest value 
    diff_vector<- seq_vector[!seq_vector %in% temp_vector]
    lowest_value<-min(diff_vector)
    
    # The missing value is...
    print(paste("The missing value is ", lowest_value))
}


find_lowestvalue(vector_example1)     # 2
find_lowestvalue(vector_example2)     # 3
find_lowestvalue(vector_example3)     # 4
find_lowestvalue(vector_example4)     # 1
