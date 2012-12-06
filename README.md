# ropensciToolkit #

## Installing ##
```
This package isn't ready for public use yet. Once the first version of helper functions are sorted out, we'll push this to CRAN.
```

This package is designed to provide helper functions to the entire [rOpenSci](http:/ropensci.org/) suite. The plan is to first work with packages already on CRAN and then continue adding support to others (in a dev branch till they also become part of CRAN).

This package should not be confused with the main rOpensci package (whcih will provide global search, discovery and visualization capabilities). Since two packages cannot have each other in the DEPENDENCY list, the helper functions had to go in a separate Toolkit package.

This package will have classes with generic methods.
```r
print
summary
plot
```

Then it will have non-generic ones like, save.
save -> `csv`, `Rda`, `Rds`, and others.


