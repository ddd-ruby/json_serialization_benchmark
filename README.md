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
    RABL Ultra Simple                         2.540000   1.660000   4.200000 (  4.263888)               94        12226
    AMS Ultra Simple                          0.370000   0.010000   0.380000 (  0.389094)               51         3786
    ActiveSerializer Ultra Simple             0.250000   0.010000   0.260000 (  0.265010)               50         3370
    Presenters Ultra Simple                   0.120000   0.000000   0.120000 (  0.128774)               24         1610
    ApiView Ultra Simple                      0.130000   0.000000   0.130000 (  0.138166)               11          914
    -------------------------------------------------------------------------------------------------------------------
    RABL Simple                              13.840000   9.040000  22.880000 ( 24.286793)              496        66863
    AMS Simple                                1.610000   0.010000   1.620000 (  1.653728)              196        14654
    ActiveSerializer Simple                   0.980000   0.010000   0.990000 (  1.034031)              205        12990
    Presenters Simple                         0.510000   0.010000   0.520000 (  0.543052)               97         6798
    ApiView Simple                            0.220000   0.000000   0.220000 (  0.233541)               15         2126
    -------------------------------------------------------------------------------------------------------------------
    RABL Complex                             28.410000  17.640000  46.050000 ( 48.414340)             1026       139082
    AMS Complex                               2.620000   0.040000   2.660000 (  2.838306)              306        23410
    ActiveSerializer Complex                  1.460000   0.020000   1.480000 (  1.660751)              237        15708
    Presenters Complex                        1.210000   0.020000   1.230000 (  1.568715)              200        15384
    ApiView Complex                           0.220000   0.000000   0.220000 (  0.226679)               19         1933


    Collection tests:

                                                    user     system      total        real       allocations      memsize
    RABL Ultra Simple: Collection               2.370000   1.780000   4.150000 (  4.604278)             7599      1063369
    AMS Ultra Simple: Collection                0.430000   0.010000   0.440000 (  0.503199)             6114       444906
    ActiveSerializer Ultra Simple: Collection   0.250000   0.010000   0.260000 (  0.271704)             5408       355914
    Presenters Ultra Simple: Collection         0.120000   0.000000   0.120000 (  0.121700)             3508       207914
    ApiView Ultra Simple: Collection            0.050000   0.000000   0.050000 (  0.045178)              310        41594
    ---------------------------------------------------------------------------------------------------------------------
    RABL Simple: Collection                    13.840000   9.090000  22.930000 ( 25.651890)            47403      6520053
    AMS Simple: Collection                      2.370000   0.050000   2.420000 (  2.585041)            28314      2153806
    ActiveSerializer Simple: Collection         1.130000   0.030000   1.160000 (  1.310037)            23708      1516314
    Presenters Simple: Collection               0.620000   0.010000   0.630000 (  0.660961)            16008      1021114
    ApiView Simple: Collection                  0.120000   0.000000   0.120000 (  0.123044)              711       162834
    ---------------------------------------------------------------------------------------------------------------------
    RABL Complex: Collection                   30.440000  18.910000  49.350000 ( 53.342557)            99513     13783287
    AMS Complex: Collection                     2.320000   0.030000   2.350000 (  2.396835)            28314      2153806
    ActiveSerializer Complex: Collection        1.520000   0.030000   1.550000 (  1.916880)            27708      1861714
    Presenters Complex: Collection              1.370000   0.040000   1.410000 (  1.440246)            34308      2335714
    ApiView Complex: Collection                 0.120000   0.010000   0.130000 (  0.126791)             1111       143534
