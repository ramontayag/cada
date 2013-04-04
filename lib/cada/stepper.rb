module Cada
  class Stepper

    def self.method_missing(method_name, *args, &block)
      if 1.respond_to?(method_name)
        start_date, end_date = args
        self.new(method_name, start_date, end_date, &block).step
      else
        message = '`meh` is not a valid range. Use `day`, `month`, `week`, etc'
        fail NoMethodError, message
      end
    end

    def initialize(range, start_date, end_date, &block)
      @range = range
      @start_date = start_date
      @end_date = end_date
      @block = block
    end

    def step
      current_date = @start_date
      while current_date <= @end_date
        @block.call(current_date)
        current_date += 1.send(@range)
      end
    end

  end
end
