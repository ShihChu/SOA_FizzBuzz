# frozen_string_literal: true

def fizzbuzz(size)
  arr = (1..size).to_a
  arr.map do |n|
    n = if (n % 3).zero?
          (n % 5).zero? ? 'FizzBuzz' : 'Fizz'
        else
          (n % 5).zero? ? 'Buzz' : n
        end
    block_given? ? yield(n.to_s) : n.to_s
  end
end
