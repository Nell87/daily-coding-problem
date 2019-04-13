#### Problem #63 [Easy - Microsoft - Can you find a word in a matrix?] #### ------------------------------------------

# Given a 2D matrix of characters and a target word, write a function that 
# returns whether the word can be found in the matrix by going left-to-right, 
# or up-to-down.

# For example, given the following matrix:
  
#  [['F', 'A', 'C', 'I'],
#   ['O', 'B', 'Q', 'P'],
#   ['A', 'N', 'O', 'B'],
#   ['M', 'A', 'S', 'S']]
# and the target word 'FOAM', you should return true, since it's the leftmost 
# column. Similarly, given the target word 'MASS', you should return true, 
# since it's the last row.

# We create the matrix
data<-matrix(c("F", "A", "C", "I", "O", "B", "Q", "P", "A", "N", "O", "B", "M",
               "A", "S", "S"), nrow=4, ncol=4, byrow = TRUE)

# Create the function for checking if a word exists
searching_word<-function(word, dataset){

  # We save the numbers of rows and columns
  n_rows<-nrow(dataset)
  n_cols<-ncol(dataset)
  
  # Checking per rows
  for (i in 1:n_rows){
    test<-paste(data[i,], collapse = "")
    
    if(grepl(word,test)){
      print(paste("yes", "it's on the row ", i))
    }
  }
  
  # Checking per columns
  for (i in 1:n_cols){
    test<-paste(data[,i], collapse = "")
    
    if(grepl(word,test)){
      print(paste("yes", "it's on the row ", i))
    }
  }
}

# Checking the function
searching_word("NA", data)

# Removing objects
rm(data, searching_word)



