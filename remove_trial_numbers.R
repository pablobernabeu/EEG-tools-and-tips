

# Remove trial numbers from temporary file

remove_trial_numbers = 
  
  function(file) {
    
    require(dplyr)
    require(stringr)
    
    # Read the file into a vector of lines
    file = readLines(paste0(file, '.vmrk'))
    
    # Remove trial numbers
    file = file %>% str_replace_all(',0  .*', ',0')
    
    # Return result
    return(file)
  }
