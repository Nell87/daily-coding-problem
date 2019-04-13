#### Problem #001 [Easy - Google - #### ------------------------------------------

# Given a list of numbers and a number k, return whether any two numbers 
# from the list add up to k.
# For example, given [10, 15, 3, 7] and k of 17, return true since 10 + 7 is 17.
# Bonus: Can you do this in one pass?

vector_example<- c(10,15,3,7)

# We create the function 
sum_two_numbers_function<-function(vector,k){

# Base statement is = FALSE    
statement="FALSE"
  
  # First number (from 1 to n-1)
  for(i in 1:(length(vector)-1)){
    
    # Second number (from i+1 to the last one)
    j=i+1
    for(j in j:length(vector)){
      
      # We establish the condition 
      if(vector[i]+vector[j]==k){
        statement=paste("True!", vector[i], "+", vector[j], "=", k)
        print(statement)
      }
      
    }
  }
 
  # If the statement is false, print it
  if(statement=="FALSE"){
    print("False")
  }
}

sum_two_numbers_function(vector=vector_example, k=17)  
