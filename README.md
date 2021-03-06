# CAPI
## Child Abduction Preliminary Investigation
Here, we present an example of missing children searching carried by preliminary investigation and pattern detection of abductions. The hipothetical scenario is that a group of pregnant womens have been dissapeared in the City of Buenos Aires in 2018. A few resolved cases are used in order to model the relationship between the expected birth date of the baby (based on pregnancy month and date of mothers abduction) and the declared birth date (declared in the false birth certificate).
The non-parametric model is setted up using dirichletprocess package, available on CRAN (https://cran.r-project.org/web/packages/dirichletprocess/index.html) and DirichletReg, available on https://cran.r-project.org/web/packages/DirichletReg/index.html. Furthermore, bayesian inference approach results suitable in the establishment of a prior probability (based on preliminary investigation) that could be actualized by genetic evidence (kinship test).
All cases exemplified are based on real solved cases of the "Missing Grandchildren of Argentina". In order to preserve the anonymity some changes have been incorporated to the data (as the year a dates) preserving the main characteristics such as relation between Actual Birth Date (ABD) and Declared Birth Date (DBD).
Distance ABD-DBD is reported.
The groups correspond to different mechanism of birth date ilegal declaration. Examples for each case based on real testimonies of children abductions are reported. The groups ABD-DBD dates are detailes below:

Group A: -inf;-120
Group B:  -120;-30
Group C:    -30;30
Group D:    30;120
Group E:   120;240
Group F:   240;360
Group G:   360;inf
