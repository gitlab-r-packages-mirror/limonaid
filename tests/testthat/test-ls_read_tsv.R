testthat::test_that("a minimal LimeSurvey TSV file can be imported", {

  lsrv <-
    limonaid::ls_read_tsv(
      system.file(
        "extdata",
        "export-of-survey-with-one-question-as-tsv.txt",
        package = "limonaid"
      )
    );

  testthat::expect_equal(nrow(lsrv), 72);

})

testthat::test_that("a more extensive LimeSurvey TSV file can be imported", {

  lsrv <-
    limonaid::ls_read_tsv(
      system.file(
        "extdata",
        "export-of-minimal-survey-as-tsv.txt",
        package = "limonaid"
      )
    );

  testthat::expect_equal(nrow(lsrv), 312);

})

