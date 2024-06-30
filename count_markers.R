

# Count instances of markers 'S  2' and 'S  3'

count_markers = 
  
  function(file_without_extension, marker) {
    
    require(dplyr)
    require(stringr)
    
    # Read the file into a vector of lines
    file_path = paste0(file_without_extension, '.vmrk')
    file = readLines(file_path)
    
    # Count and print result
    marker_count = sum(str_detect(file, 'S  2'))
    cat('Count of "', marker, '": ', marker_count, '\n', sep = '')
  }
