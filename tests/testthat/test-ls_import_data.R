###-----------------------------------------------------------------------------
###-----------------------------------------------------------------------------
###-----------------------------------------------------------------------------

testthat::test_that("data from LS5 can be imported, test 1", {

  dat <-
    limonaid::ls_import_data(
      path = system.file("extdata", "testing", package="limonaid"),
      sid = 100001
    );

  testthat::expect_equal(nrow(dat), 3);

})

testthat::test_that("data from LS5 can be imported, test 2", {

  dat <-
    limonaid::ls_import_data(
      path = system.file("extdata", "testing", package="limonaid"),
      sid = 998192
    );

  testthat::expect_equal(unclass(dat$age[2]), 66);

})

###-----------------------------------------------------------------------------
###-----------------------------------------------------------------------------
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

