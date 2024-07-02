

# Count instances of a marker

count_markers = 
  
  function(file, marker) {
    
    require(dplyr)
    require(stringr)
    
    # Read the file into a vector of lines
    file = readLines(file)
    
    # Count and print result
    marker_count = sum(str_detect(file, marker))
    cat('Count of "', marker, '": ', marker_count, ' instances\n', sep = '')
  }
