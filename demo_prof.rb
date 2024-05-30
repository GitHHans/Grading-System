require 'ruby-prof'

# A simple class with a heavy computation method
class SampleClass
  def heavy_computation
    result = 0
    1_000_000.times do |i|
      result += Math.sqrt(i)
    end
  end
end

# Start the profiling
RubyProf.start

sample = SampleClass.new
sample.heavy_computation

# Stop the profiling
result = RubyProf.stop

# Print the profiling results to the console using the FlatPrinter
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)
