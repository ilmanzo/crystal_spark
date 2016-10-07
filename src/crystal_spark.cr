require "./crystal_spark/*"

module Spark
  # took from https://github.com/kennethreitz/spark.py
  # and https://github.com/holman/spark
  TICKS = " ▁▂▃▄▅▆▇█"

  extend self

  def string(ints, fit_min = false)
    # Returns a spark string from given iterable of ints.
    # Keyword Arguments:
    # fit_min: Matches the range of the sparkline to the input integers
    #         rather than the default of zero. Useful for large numbers with
    #         relatively small differences between the positions
    min_range = fit_min ? ints.min : 0
    step_range = ints.max - min_range
    step = step_range.to_f / (TICKS.size - 1).to_f
    step = 1 if step < 1
    String.build do |str|
      ints.each do |i|
        index = ((i - min_range) / step).to_i
        str << TICKS[index]
      end
    end
  end
end

p Spark.string([1, 5, 22, 13, 53])
p Spark.string([0, 30, 55, 80, 33, 150], true)
