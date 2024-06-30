

# Create temporary vmrk file with numbered trials

number_trials = 
  
  function(file_without_extension, start_line, lines_per_trial, first_number) {
    
    # Read the file into a vector of lines
    file_path = paste0(file_without_extension, '.vmrk')
    file = readLines(file_path)
    
    # Initialize the ordinal number counter
    ordinal_number = first_number
    
    # Loop through the lines and append the ordinal number 
    # to every fifth line after the 10th line.
    for (i in seq(start_line, length(file), lines_per_trial)) {
      file[i] = paste0(file[i], '  ', ordinal_number)
      ordinal_number = ordinal_number + 1
    }
    
    # Return result
    return(file)
  }
