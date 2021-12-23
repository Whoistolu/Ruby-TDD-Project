class Solver
  def factorial(n)
    if n < 0
      raise "Number inputted is less than 0"
    elsif n == 0
      return 1
    else 
      product = 1
      for i in 1..n do
        product *= i
      end
      product
    end
  end

  def reverse(string)
    string.reverse
  end

  def fizzbuzz(number)
    if number % 3 == 0 && number % 5 == 0
      return 'fizzbuzz'
    elsif number % 3 == 0
        return 'fizz'
    elsif number % 5 == 0
          return 'buzz'
    else number.to_s
    end
  end
end