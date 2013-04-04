require "cada/version"
require 'active_support/core_ext/numeric'
require 'cada/stepper'

module Cada
  def self.method_missing(method_name, *args, &block)
    Stepper.send(method_name, *args, &block)
  end
end
