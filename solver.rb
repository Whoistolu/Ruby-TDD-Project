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

  