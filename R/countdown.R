#' countdown
#'
#' A countdown widget
#'
#' @param start countdown start date, can be a string or a datetime object (POSIXct or POSIXlt)
#' @param width widget width
#' @param height widget height
#' @param elementId widget id
#'
#' @import htmlwidgets
#'
#' @export
#' @examples
#' countdown(as.POSIXct("2015-10-12 13:00:00", tz = "UTC"))
#'
countdown <- function(start, width = NULL, height = NULL, elementId = NULL) {

  # forward options using x
  x <- list(
    start = start
  )

  # create widget
  htmlwidgets::createWidget(
    name = "countdown",
    x,
    width = width,
    height = height,
    package = "shiny.countdown",
    elementId = elementId
  )
}

#' Shiny bindings for countdown
#'
#' Output and render functions for using countdown within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a countdown
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name countdown-shiny
#'
#' @export
countdownOutput <- function(outputId, width = "100%", height = "400px") {
  htmlwidgets::shinyWidgetOutput(outputId, "countdown", width, height, package = "shiny.countdown")
}

#' @rdname countdown-shiny
#' @export
renderCountdown <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) {
    expr <- substitute(expr)
  } # force quoted
  htmlwidgets::shinyRenderWidget(expr, countdownOutput, env, quoted = TRUE)
}
