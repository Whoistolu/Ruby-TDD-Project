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

  