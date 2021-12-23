# frozen_string_literal: true

class Solver
  def factorial(n)
    if n.negative?
      raise 'Number inputted is less than 0'
    elsif n.zero?
      1
    else
      product = 1
      (1..n).each do |i|
        product *= i
      end
      product
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
