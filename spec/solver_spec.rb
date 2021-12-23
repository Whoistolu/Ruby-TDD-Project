require './solver.rb'

describe Solver do 
  before(:each) do 
    @solver = Solver.new
  end

  context 'Test the factorial method in Solver Class' do
    it 'should return the factorial of a given number' do
      factorial = @solver.factorial(5)
      expect(factorial).to eql 120
      expect(@solver.factorial(10)).to eql 3628800
    end 
    
    it 'should return the factorial of 1 for number 0' do
      factorial = @solver.factorial(0)
      expect(factorial).to eql 1
    end 
  
    it 'should raise an exception when the number is less than 0' do
      expect { @solver.factorial(-2) }.to raise_error("Number inputted is less than 0")
    end
  end

  context 'Test the reverse method in Solver Class' do
    it 'should return the reverse string of the argument in reverse method' do
      reversed_string = @solver.reverse('Goodbye')
      expect(reversed_string).to eql 'eybdooG'
    end
  end

  context 'Test the fizzbuzz method in Solver Class' do
    it 'should return fizzbuzz if 15 is passed as number' do
      string = @solver.fizzbuzz(15)
      expect(string).to eql 'fizzbuzz'
    end
  
    it 'should return fizz if 9 is passed as number' do
      string = @solver.fizzbuzz(9)
      expect(string).to eql 'fizz'
    end
  
    it 'should return buzz if 10 is passed as number' do
      string = @solver.fizzbuzz(10)
      expect(string).to eql 'buzz'
    end
  
    it 'should return 7 as a string it is passed as number' do
      string = @solver.fizzbuzz(7)
      expect(string).to eql '7'
    end
  end
  end