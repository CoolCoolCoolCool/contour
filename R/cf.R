#' Simpler function for making contours with cf package.
#' Won't give argument completion, so all must be specified
#'
#' @param ... Arguments to be passed to cf_func or cf_data based on 
#' data type of first argument
#'
#' @return Whatever is returned from other function, probably nothing
#' @export
#'
#' @examples
#' cf(function(x){x[1]^2 - x[2]})
cf <- function(...) {
  dots <- list(...)
  if (is.function(dots[[1]])) {
    cf_func(...)
  } else if (is.numeric(dots[[1]])) {
    cf_data(...)
  } else {
    stop("Data not recognized. Use cf_func for function or 
         cf_data for data or cf_grid for full grid of data.")
  }
}