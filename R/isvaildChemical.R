#rfunctions for find whether the chemicals are valid

isvalidChemical <- function(search_values) {

  utils::data("inventory", envir = environment())

  column_values <- inventory$Abbreviation




  #Check if values in 'search_value'  exist in 'Abbreviatio' column
  results <- search_values %in% column_values



  return(results)
}
