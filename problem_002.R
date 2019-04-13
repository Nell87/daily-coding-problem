#### Problem #002 [Hard - Uber - #### ------------------------------------------

# Given an array of integers, return a new array such that each element at 
# index i of the new array is the product of all the numbers in the original 
# array except the one at i.

# For example, if our input was [1, 2, 3, 4, 5], the expected output would be
# [120, 60, 40, 30, 24]. If our input was [3, 2, 1], the expected output would 
# be [2, 3, 6].

# Follow-up: what if you can't use division?

# Initialize some variables 
vector_example1<-c(3,2,1)
vector_example2<-c(5,2,4,3)
final_vector<- c()

# Create the function 
multiply_function<-function(vector){
    
  # Go through every value in the vector
  for(i in 1:length(vector)){
    
    # Create a temporal vector withouth the current value
    temp_vector<- vector[!vector %in% vector[i]]
    temp_value<-temp_vector[1]
    
    # Multiply the values
    for (j in 2:length(temp_vector)){
      temp_value= temp_value * temp_vector[j]
    }
    
    # Save the value in the final vector
    final_vector<-append(final_vector, temp_value)
    print(final_vector)
  }
}

# Testing the function
multiply_function(vector = vector_example2)

