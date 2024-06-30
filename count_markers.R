

# Count instances of a marker

count_markers = 
  
  function(file, marker) {
    
    require(dplyr)
    require(stringr)
    
    # Read the file into a vector of lines
    file = readLines(paste0(file_without_extension, '.vmrk'))
    
    # Count and print result
    marker_count = sum(str_detect(file, 'S  2'))
    cat('Count of "', marker, '": ', marker_count, ' instances\n', sep = '')
  }
