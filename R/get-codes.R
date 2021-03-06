
#' Retrieves DHS file format code based on a text
#' match against 's'.
#' 
#' @param s string to match
#' @param ... additional arguments passed to grepl, 
#'        e.g.-ignore.case=TRUE
#' @return the file format code or codes matching the string
#' @export
get_file_format_code <- function(s, ...) {
  map <- get_file_format_map()
  o <- search_reverse_map(s, map, ...)
  return(o)
}

#' Retrieves the file format extension based on
#' a text match against 's'.  
#' 
#' @param s string to match
#' @param ... additional arguments passed to grepl,
#'        e.g.-ignore.case=TRUE
#' @return the file extension or extensions matching the string
#' @export
get_file_format_extensions <- function(s, ...) {
  code <- get_file_format_code(s, ...) 
  map <- get_file_format_extensions_map()
  return(map[code])
}

#' Retrieves the dataset type code based on a 
#' text match against 's'.
#'
#' @param s string to match
#' @param ... additional arguments passed to grepl,
#'        e.g.-ignore.case=TRUE
#' @return the dataset type code or codes matching the string
#' @export
get_dataset_type_code <- function(s, ...) {
  map <- get_dataset_type_map()
  o <- search_reverse_map(s, map, ...)
  return(o)
}


#' Retrieves the country code based on a 
#' text match against 's'.
#'
#' @param s string to match
#' @param ... additional arguments passed to grepl,
#'        e.g.-ignore.case=TRUE
#' @return the country code or codes matching the string
#' @export
get_country_code <- function(s, ...) {
  map <- get_country_code_map()
  o <- search_reverse_map(s, map, ...)
  return(o)
}

