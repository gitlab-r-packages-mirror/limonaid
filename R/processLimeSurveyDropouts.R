#' Process LimeSurvey dropouts
#'
#' This function makes it easy to parse the dropouts from a LimeSurvey
#' questionnaire.
#'
#' This will be described more in detail in a forthcoming publications.
#'
#' @param lastpage A vector with the 'lastpage' variable as LimeSurvey stores
#' it (an integer denoting the last page a participant visited, in other words,
#' where they dropped out).
#' @param pagenames Optional: names for each page.
#' @param relevantPagenames Optional: the names of those pages that should be
#' included.
#' @return A list with information about the dropout, including plots.
#'
#' @examples limonaid::processLimeSurveyDropouts(c(1,2,1,1,2,3,2,2,3,2,1));
#'
#' @export
processLimeSurveyDropouts <- function(lastpage, pagenames = NULL,
                                      relevantPagenames = NULL) {

  if ((!requireNamespace("ggplot2", quietly = TRUE)) ||
      (!requireNamespace("ggrepel", quietly = TRUE))) {
    stop("To process the LimeSurvey dropouts, you need to have both ",
         "the {ggplot2} and {ggrepel} packages installed. You can ",
         "install them with:\n\n  install.packages(",
         "c('ggplot2', 'ggrepel'));\n");
  }

  if (!is.numeric(lastpage)) {
    stop("Argument 'lastpage' is not a numeric vector but has class ",
         class(lastpage), ". The first nonmissing values are: ",
         vecTxtQ(utils::head(stats::complete.cases(lastpage))), ".");
  }

  res <- list();
  res$specificDropout <- data.frame(lastpage = 0:max(lastpage));

  if (is.null(pagenames)) pagenames <-
      paste('Dropped out at page', seq(from=1, to=max(lastpage + 1)));

  if (is.null(relevantPagenames)) relevantPagenames <-
      paste('Page', seq(from=1, to=max(lastpage + 1)));

  if (length(pagenames) != nrow(res$specificDropout)) {
    stop("The vector 'pagenames' must have the same length as the number of pages ",
         "in the 'lastpage' vector - but ", length(pagenames), " pagenames were ",
         "provided, for ", nrow(res$specificDropout), " lastpages.");
  }

  totalParticipants <- length(lastpage);

  res$specificDropout <- merge(res$specificDropout,
                               as.data.frame(table(lastpage),
                                             responseName='frequency'),
                               by='lastpage',
                               all=TRUE);
  res$specificDropout$frequency[is.na(res$specificDropout$frequency)] <- 0;
  res$specificDropout <- res$specificDropout[order(as.numeric(res$specificDropout$lastpage)), ];

  res$specificDropout$comments <- pagenames;

  res$progressiveDropout <- data.frame(frequency = totalParticipants -
                                         utils::head(c(0, utils::tail(cumsum(res$specificDropout$frequency), -1)), -1));
  res$progressiveDropout$percentage <- 100 * res$progressiveDropout$frequency /
    totalParticipants;
  res$progressiveDropout$page <- 1:nrow(res$progressiveDropout);
  res$progressiveDropout$prettyPercentage <- paste0(round(res$progressiveDropout$percentage), "%");

  res$plots -> list;

  res$plots$absoluteDropout <-
    ggplot2::ggplot(
      res$progressiveDropout,
      ggplot2::aes_string(x='page', y='frequency')
    ) +
    ggplot2::geom_point(size=4) +
    ggplot2::geom_line(size=1) +
    ggplot2::ylab('Number of participants') +
    ggplot2::xlab('Page in the questionnaire') +
    ggplot2::theme_bw() +
    ggrepel::geom_text_repel(ggplot2::aes_string(label='frequency'),
                             point.padding = ggplot2::unit(1, 'lines'),
                             min.segment.length = ggplot2::unit(0.05, "lines"),
                             segment.color="#2A5581", color="#2A5581",
                             size=5, nudge_x=1) +
    ggplot2::scale_x_continuous(breaks=res$progressiveDropout$page);

  res$plots$relativeDropout <-
    ggplot2::ggplot(
      res$progressiveDropout,
      ggplot2::aes_string(x="page", y="percentage")
    ) +
    ggplot2::geom_point(size=4) +
    ggplot2::geom_line(size=1) +
    ggplot2::ylab('Percentage of participants') +
    ggplot2::xlab('Page in the questionnaire') +
    ggplot2::theme_bw() +
    ggrepel::geom_text_repel(ggplot2::aes_string(label='prettyPercentage'),
                             point.padding = ggplot2::unit(1, 'lines'),
                             min.segment.length = ggplot2::unit(0.05, "lines"),
                             segment.color="#2A5581", color="#2A5581",
                             size=5, nudge_x=1) +
    ggplot2::scale_x_continuous(breaks=res$progressiveDropout$page);

  class(res) <- 'limeSurveyDropouts';

  return(res);

}
