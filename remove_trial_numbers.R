

# Remove trial numbers from temporary file

remove_trial_numbers = 
  
  function(temp_file_without_extension) {
    
    require(dplyr)
    require(stringr)
    
    # Read the file into a vector of lines
    file_path = paste0(temp_file_without_extension, '.vmrk')
    file = readLines(file_path)
    
    # Remove trial numbers
    file = file %>% str_replace_all(',0  .*', ',0')
    
    # Return result
    return(file)
  }
