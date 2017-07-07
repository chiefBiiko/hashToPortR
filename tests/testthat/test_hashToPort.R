# test hashToPortR

testthat::context('hash')

testthat::test_that('hash function is pure', {
  
  testthat::expect_identical(hashToPort('chiefBiiko'),
                             hashToPort('chiefBiiko'))
  
  testthat::expect_identical(hashToPort(419L),
                             hashToPort(419L))
  
})