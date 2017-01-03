# RABL vs. ActiveModel Serializers vs. Plain Ruby Presenters vs. ApiView

Performance benchmark of RABL, ActiveModel Serializers, and plain Ruby
presenters for JSON serialization.

## Setup

1. Clone the repo

        git clone git@github.com:ddd-ruby/json_serialization_benchmark.git

2. Change directory to json-serialization-benchmark

        cd json-serialization-benchmark

3. Install required gems

        bundle install

## Usage

* Run the benchmarks

        bundle exec ruby benchmark.rb



## Results:
                                                  user     system      total        real       allocations      memsize
    RABL Ultra Simple                         2.720000   1.760000   4.480000 (  4.833443)               94        12226
    AMS Ultra Simple                          0.360000   0.010000   0.370000 (  0.375135)               51         3786
    Presenters Ultra Simple                   0.130000   0.000000   0.130000 (  0.133465)               24         1610
    ApiView Ultra Simple                      0.140000   0.000000   0.140000 (  0.140216)               11          914
    -------------------------------------------------------------------------------------------------------------------
    RABL Simple                              13.220000   8.440000  21.660000 ( 22.061117)              496        66863
    AMS Simple                                1.600000   0.020000   1.620000 (  1.628729)              196        14654
    Presenters Simple                         0.530000   0.000000   0.530000 (  0.545755)               97         6798
    ApiView Simple                            0.240000   0.010000   0.250000 (  0.243125)               15         2126
    -------------------------------------------------------------------------------------------------------------------
    RABL Complex                              30.390000  18.190000  48.580000 ( 52.066235)             1026       139082
    AMS Complex                               2.570000   0.030000   2.600000 (  2.640974)              306        23410
    Presenters Complex                        1.110000   0.010000   1.120000 (  1.132993)              200        15384
    ApiView Complex                           0.250000   0.000000   0.250000 (  0.251235)               19         1933


    Collection tests:

                                                  user     system      total        real       allocations      memsize
    RABL Ultra Simple: Collection             2.300000   1.720000   4.020000 (  4.103348)             7599      1063369
    AMS Ultra Simple: Collection              0.420000   0.010000   0.430000 (  0.434386)             6114       444906
    Presenters Ultra Simple: Collection       0.120000   0.000000   0.120000 (  0.119619)             3508       207914
    ApiView Ultra Simple: Collection          0.040000   0.000000   0.040000 (  0.042759)              310        41594
    -------------------------------------------------------------------------------------------------------------------
    RABL Simple: Collection                  12.950000   8.500000  21.450000 ( 21.861232)            47403      6520053
    AMS Simple: Collection                    2.380000   0.060000   2.440000 (  2.500525)            28314      2153806
    Presenters Simple: Collection             0.600000   0.010000   0.610000 (  0.644312)            16008      1021114
    ApiView Simple: Collection                0.120000   0.000000   0.120000 (  0.130635)              711       162834
    -------------------------------------------------------------------------------------------------------------------
    RABL Complex: Collection                 27.680000  17.180000  44.860000 ( 45.860437)            99513     13783287
    AMS Complex: Collection                   2.450000   0.060000   2.510000 (  2.569880)            28314      2153806
    Presenters Complex: Collection            1.340000   0.020000   1.360000 (  1.377490)            34308      2335714
    ApiView Complex: Collection               0.120000   0.000000   0.120000 (  0.134076)             1111       143534
