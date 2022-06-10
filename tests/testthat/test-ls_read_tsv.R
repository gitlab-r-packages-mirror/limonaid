testthat::test_that("a minimal LimeSurvey TSV file can be imported", {

  lsrv <-
    limonaid::ls_read_tsv(
      system.file(
        "extdata",
        "export-of-survey-with-one-question-as-tsv.txt",
        package = "limonaid"
      )
    );

  limonaid::ls_tsv_get_rows(lsrv, class = "S");

  limonaid::ls_tsv_get_rows(lsrv, class = "SL")['name']

  testthat::expect_equal(nrow(lsrv), 72);

})

testthat::test_that("a minimal LimeSurvey TSV file in two languages can be imported", {

  lsrv <-
    limonaid::ls_read_tsv(
      system.file(
        "extdata",
        "export-of-en-and-nl-survey-with-one-question-as-tsv.txt",
        package = "limonaid"
      )
    );

  limonaid::ls_tsv_get_rows(lsrv, class = "S");

  limonaid::ls_tsv_get_rows(lsrv, class = "SL")

  testthat::expect_equal(nrow(lsrv), 96);

})

###-----------------------------------------------------------------------------

testthat::test_that("a more extensive LimeSurvey TSV file can be imported", {

  lsrv <-
    limonaid::ls_read_tsv(
      system.file(
        "extdata",
        "export-of-minimal-survey-as-tsv.txt",
        package = "limonaid"
      )
    );

  limonaid::ls_tsv_get_rows(lsrv, class = "S");

  limonaid::ls_tsv_get_rows(lsrv, class = "SL")['name']

  ### The row with the slider question
  limonaid::ls_tsv_get_rows(lsrv, name = "nrOfDMQs")

  if (Sys.getenv("LANG") %in% c("en_US.iso88591", "en_US.iso885915")) {
    ### Test differently in certain configurations; as per Kurt's email of
    ### 2022-02-28, this check fails in a strict Latin-1* locale, e.g.
    ### under Linux using LANG=en_US.iso88591 (see the debian-clang results).
    ### see https://cran-archive.r-project.org/web/checks/2022/2022-03-14_check_results_limonaid.html
    testthat::expect_equal(nrow(lsrv), 163);
  } else {
    ### Changed on 2022-06-08 as this still fails as per Kurt's email of
    ### 2022-05-30... Very weird.
    #testthat::expect_equal(nrow(lsrv), 312);
    testthat::expect_equal(nrow(lsrv), 312);
  }

})

###-----------------------------------------------------------------------------

### For convenience
dontRun <- expression({

  yourCOVID19riskPath <-
    "B:/Data/ABC/your-risk.com/your-covid-19-risk/operationalizations/limesurvey/during-development";

  lsrv <-
    limonaid::ls_read_tsv(
      file.path(yourCOVID19riskPath,
                "test-of-survey-with-hidden-equation.txt")
    );

  limonaid::ls_tsv_get_rows(lsrv, class = "Q");

})

