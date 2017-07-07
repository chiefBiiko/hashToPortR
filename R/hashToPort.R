# hashToPortR

#' Hash a value to a valid port
#' 
#' @param value Character or numeric (quasi-integer) vector of length \code{1}.
#' @return Integer.
#' 
#' @details The implemented hash function is pure but not perfect/injective/
#' collision free. This is just a R binding to the fabolous \code{hash-to-port}
#' npm module bundled by \code{mafintosh} based on the marvelous 
#' \code{hash-index} npm module written by \code{watson}.
#' 
#' @seealso \url{https://github.com/mafintosh/hash-to-port} 
#' \url{https://github.com/watson/hash-index}
#' 
#' @export
hashToPort <- function(value) {
  stopifnot(length(value) == 1L, 
            is.character(value) || is.numeric(value) && value %% 1L == 0L)
  ct <- V8::v8()
  ct$source(file.path(.libPaths()[1], 'hashToPortR', 'bundle.js'))
  return(ct$call('hashToPort', value))
}