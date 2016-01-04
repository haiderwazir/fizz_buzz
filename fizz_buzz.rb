class FizzBuzz

# ruby -r "./fizz_buzz.rb" -e "FizzBuzz.fizz_buzz" to run from command line
  def self.fizz_buzz
    (1..100).each do |num|
      text = ''
        text += 'Fizz' if num%3 == 0
        text += 'Buzz' if num%5 == 0
        puts text.size == 0 ? num : text
    end
  end

end