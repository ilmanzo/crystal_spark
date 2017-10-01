# spark
### sparklines in your Crystal

See? Here's a graph of your productivity gains after using spark: ▁▂▃▅▇

## install

This is a Crystal port of the python [spark](https://github.com/kennethreitz/spark.py).

## usage

Just pass to the `Spark.string` function an array of numbers.

    Spark.string([0,30,55,80,33,150])
    ▁▂▃▅▂▇

the function accept a second parameter for normalize data and fit min:

    Spark.string([0, 30, 55, 80, 33, 150], true)
     ▁▂▄▁█
## ▇▁ ⟦⟧ ▇▁


[spark]:     https://github.com/holman/spark
[holman]:   https://twitter.com/holman
