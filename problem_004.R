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
    
find_the_number<-function(vector){
  
  # Sort the vector
  sort_vector<-sort(vector) 
  
  # Remove 0 and negative numbers 
  sort_vector<-sort_vector[which(sort_vector>=0)]
  
  # Add the previous and next number
  sort_vector<- append(sort_vector[1]-1, sort_vector)
  sort_vector<-append(sort_vector,sort_vector[length(sort_vector)]+1)
  
  # Remove negatives again
  sort_vector<-sort_vector[which(sort_vector>=0)]

  # Create a complete sequence for a future comparison
  complete_sequence<-seq(from=min(sort_vector), to=max(sort_vector), by=1)
  
  # Time to compare!
  
    # Do they have different length?
    if(length(complete_sequence)!=length(sort_vector)){
      numbers<- complete_sequence[!complete_sequence %in% vector]
      final_number<-min(numbers[which(numbers>0)])
      
    # Do they have the same length?  
    } else{
      final_number<-min(complete_sequence[!complete_sequence %in% vector])
    }
  # And the final number is...
  print(paste("The final number is ", final_number))
}

# Testing the function 
find_the_number(vector=vector_example1)   # 2
find_the_number(vector=vector_example2)   # 3
find_the_number(vector=vector_example3)   # 4
find_the_number(vector=vector_example4)   # 1

