#rfunctions for find inchikey list



foundinchiKeyList1 <- function( search_values) {
  # Find the row index where the search value matches the search column

  # Create an empty list to store the matching cell values
  matching_values <- c()
  #load("/data/PFAS_inventory.rda")
  utils::data("inventory", envir = environment())

  for (search_value in search_values){
    row_index <- which(inventory$Abbreviation == search_value)
    #print(row_index)

    # Check if any matches were found
    if (length(row_index) == 0) {
      #return(NULL)  # Return NULL if no match found
      matching_values <- c(matching_values, "N/A")
    }

    # Extract the cell value at the given row index and return column
    inchikey <- inventory$InChIKey[row_index]
    #print(inchikey)
    # append values to the list
    matching_values <- c(matching_values, inchikey)
  }

  return(matching_values)
}
