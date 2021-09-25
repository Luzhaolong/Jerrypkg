#' Title
#'
#' @param indata input dataset
#' @param ... keys that you want to test uniqueness
#'
#' @return a
#' @export assert_duplicates
#'
#' @examples
#' #' get_duplicates(iris,Species)
#' @importFrom dplyr %>% group_by summarise arrange mutate n ungroup filter select
#' @import glue

assert_duplicates <-function(indata, ...){
  dfname = deparse(substitute(indata))
  a=indata %>%
    select(...) %>%
    duplicated() %>%
    any

  print(ifelse(!a,glue('No duplication found in the {dfname}!'),glue('{dfname} has dups under this level!')))
}
