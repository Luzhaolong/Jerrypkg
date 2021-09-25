#---------------------------
# Function : get_duplicates
#---------------------------

#' Title
#'
#' @param indata dataframe
#' @param ... keys that you want to test uniqueness
#'
#' @return a
#' @export get_duplicates
#'
#' @examples
#' get_duplicates(iris,Species)
#' @importFrom dplyr %>% group_by summarise arrange mutate n ungroup filter select

get_duplicates <- function(indata,...){
  a=indata %>%
    arrange(...) %>%
    group_by(...) %>%
    mutate(n=n()) %>%
    ungroup() %>%
    filter(n>1)
}

