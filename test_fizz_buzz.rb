require 'simplecov'
SimpleCov.start

require_relative "fizz_buzz"
require "test/unit"
require 'stringio'

class TestFizzBuzz < Test::Unit::TestCase

  def setup
    @output = StringIO.new()
      $stdout = @output
      FizzBuzz.fizz_buzz()
      @output.rewind
      @lines = @output.readlines.map {|str| str.chop}
      $stdout = STDOUT
      puts @lines[0]
  end

  test "should print 1 as the first line" do
    assert @lines[0].to_i == 1
  end

  test "should print Fizz as the thrid line" do
    assert @lines[2] == "Fizz"
  end

  test "should print Buzz as the fifth line" do
    assert @lines[4]== "Buzz"
  end

  test "should print FizzBuzz as the fifteenth line" do
    assert @lines[14]== "FizzBuzz"
  end

end

