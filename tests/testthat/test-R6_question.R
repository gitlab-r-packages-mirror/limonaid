testthat::test_that("creating a question works", {
  question <- Question$new(code = "questionCode",
                           questionType = "radio");
  testthat::expect_equal(question$code, "questionCode");
});

testthat::test_that("adding answer options works", {
  question <- Question$new(code = "questionCode",
                           questionType = "radio");
  question$add_answer_option(1, "one");
  question$add_answer_option(2, "two");
  question$add_answer_option(3, "three");
  testthat::expect_equal(length(question$answerOptions), 3);
});

testthat::test_that("adding answer options in two languages works", {
  question <- Question$new(code = "questionCode",
                           questionType = "radio");
  question$add_answer_option(1, c(en = "one", nl = "een"));
  question$add_answer_option(2, c(en = "two", nl = "twee"));
  question$add_answer_option(3, c(en = "three", nl = "drie"));
  testthat::expect_equal(length(question$answerOptions), 3);
});

