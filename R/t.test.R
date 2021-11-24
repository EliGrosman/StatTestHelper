#' @export
#' @importFrom infer t_test
#'
#' @title Simple infer t_test wrapper
#'
#' @param x A data frame that can be coerced into a [tibble][tibble::tibble].
#' @param formula A formula with the response variable on the left and the explanatory on the right.
#' @param response The variable name in x that will serve as the response. This is alternative to using the formula argument.
#' @param explanatory The variable name in x that will serve as the explanatory variable.
#' @param order A string vector of specifying the order in which the levels of the explanatory variable should be ordered for subtraction, where order = c("first", "second") means ("first" - "second").
#' @param alternative Character string giving the direction of the alternative hypothesis. Options are "two-sided" (default), "greater", or "less".
#' @param mu A numeric value giving the hypothesized null mean value for a one sample test and the hypothesized difference for a two sample test.
#' @param conf_int A logical value for whether to include the confidence interval or not. TRUE by default.
#' @param conf_level A numeric value between 0 and 1. Default value is 0.95.
#' @param ... For passing in other arguments to [t.test()][stats::t.test()].
t.test <- function(
  x,
  formula,
  response = NULL,
  explanatory = NULL,
  order = NULL,
  alternative = "two-sided",
  mu = 0,
  conf_int = TRUE,
  conf_level = 0.95,
  ...
) {

  # return output of infer::t_test
  return(infer::t_test(x, formula, response, explanatory, order, alternative, mu, conf_int, conf_level, ...))
}
