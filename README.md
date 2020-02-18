# RABL vs. ActiveModel Serializers vs. Plain Ruby Presenters vs. ApiView

Performance benchmark of RABL, ActiveModel Serializers, and plain Ruby
presenters for JSON serialization.

## Setup

1. Clone the repo

        git clone git@github.com:ddd-ruby/json_serialization_benchmark.git

2. Change directory to json-serialization-benchmark

        cd json-serialization-benchmark

3. Install required gems

        bin/setup

## Usage

* Run the benchmarks

        bin/benchmark



## Results:
                                                  user     system      total        real       allocations      memsize
    RABL Ultra Simple                         1.911337   1.676705   3.588042 (  3.589055)               80         9148
    AMS Ultra Simple                          0.243042   0.009323   0.252365 (  0.254243)               44         2914
    ActiveSerializer Ultra Simple             0.162020   0.000165   0.162185 (  0.162234)               42         2810
    Presenters Ultra Simple                   0.092353   0.000240   0.092593 (  0.092715)               24         1490
    ApiView Ultra Simple                      0.222568   0.000420   0.222988 (  0.223057)               40         3132
    -------------------------------------------------------------------------------------------------------------------
    RABL Simple                              10.372594   8.619620  18.992214 ( 19.004412)              441        57986
    AMS Simple                                1.294465   0.002461   1.296926 (  1.299156)              200        15166
    ActiveSerializer Simple                   0.658684   0.001181   0.659865 (  0.660253)              168        11734
    Presenters Simple                         0.368717   0.000406   0.369123 (  0.369283)               96         6894
    ApiView Simple                            0.718818   0.001030   0.719848 (  0.720012)              132        12212
    -------------------------------------------------------------------------------------------------------------------
    RABL Complex                             21.018171  17.441400  38.459571 ( 38.487034)              889       120054
    AMS Complex                               1.971424   0.003565   1.974989 (  1.977962)              317        23266
    ActiveSerializer Complex                  0.748860   0.000795   0.749655 (  0.749899)              193        13500
    Presenters Complex                        0.764698   0.000652   0.765350 (  0.765593)              199        14480
    ApiView Complex                           0.530054   0.001296   0.531350 (  0.531919)              100         8306


    Collection tests:

                                                    user     system      total        real       allocations      memsize
    RABL Ultra Simple: Collection               1.856389   1.676163   3.532552 (  3.533854)             6885       924536
    AMS Ultra Simple: Collection                0.233785   0.004487   0.238272 (  0.239858)             5012       334842
    ActiveSerializer Ultra Simple: Collection   0.154564   0.000387   0.154951 (  0.154999)             4308       287874
    Presenters Ultra Simple: Collection         0.082595   0.000511   0.083106 (  0.083147)             2908       171874
    ApiView Ultra Simple: Collection            0.155942   0.000971   0.156913 (  0.156980)             3210       267354
    ---------------------------------------------------------------------------------------------------------------------
    RABL Simple: Collection                    10.511576   8.929531  19.441107 ( 19.486008)            42985      5826758
    AMS Simple: Collection                      1.925473   0.013268   1.938741 (  1.949859)            29012      2167742
    ActiveSerializer Simple: Collection         0.748552   0.003462   0.752014 (  0.752574)            18508      1351474
    Presenters Simple: Collection               0.469276   0.006352   0.475628 (  0.476481)            12908       931474
    ApiView Simple: Collection                  0.652091   0.004302   0.656393 (  0.656761)            12411      1175394
    ---------------------------------------------------------------------------------------------------------------------
    RABL Complex: Collection                   20.683123  17.411162  38.094285 ( 38.133114)            87786     12064159
    AMS Complex: Collection                     1.733472   0.010716   1.744188 (  1.746106)            29012      2167742
    ActiveSerializer Complex: Collection        0.843026   0.012633   0.855659 (  0.855865)            21408      1563274
    Presenters Complex: Collection              0.873950   0.006703   0.880653 (  0.880845)            27408      1958874
    ApiView Complex: Collection                 0.450063   0.002952   0.453015 (  0.453531)             9211       784794


## Verdict

In recent MRI Ruby (2.5.7) ApiView does not hold a clear beneficial position and can be easily replaced by ActiveSerializer.