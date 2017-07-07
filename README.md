# hashToPortR

[![Travis-CI Build Status](https://travis-ci.org/chiefBiiko/hashToPortR.svg?branch=master)](https://travis-ci.org/chiefBiiko/hashToPortR) [![AppVeyor Build Status](https://ci.appveyor.com/api/projects/status/github/chiefBiiko/hashToPortR?branch=master&svg=true)](https://ci.appveyor.com/project/chiefBiiko/hashToPortR) [![Coverage Status](https://img.shields.io/codecov/c/github/chiefBiiko/hashToPortR/master.svg)](https://codecov.io/github/chiefBiiko/hashToPortR?branch=master)

R binding to the fabolous npm module `hash-to-port` published by [mafintosh](https://github.com/mafintosh/hash-to-port).

Note that the implemented hash function is pure but not perfect (aka not collision free).

## Get it

```r
devtools::install_github('chiefBiiko/hashToPortR')
```

## Usage

```r
hashToPortR::hashToPort('chiefBiiko')  # always returns 22099
```

MIT