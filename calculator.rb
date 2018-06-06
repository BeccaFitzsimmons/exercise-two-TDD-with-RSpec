class Calculator
  def add(a,b)
    a + b
  end
  
  def multiply(x, y)
    x * y
  end
  
  def factorial(n)
    if n.zero?
      1
    else
      (1..n).reduce(1, :*)
    end                                                                                         
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "add returns 5 when given 0,5" do
      calc = Calculator.new
      expect(calc.add(0, 5)).to eq(5)
    end   
  	  
    it "add returns 5 when given 2,3" do
      calc = Calculator.new
      expect(calc.add(2, 3)).to eq(5)
    end
    
    it "add returns 29 when given 17,12" do
      calc = Calculator.new
      expect(calc.add(17, 12)).to eq(29)
    end
  end
  
  describe "#multiply" do
    it "multiply returns 0 when given 0,3" do
      calc = Calculator.new
      expect(calc.multiply(0, 3)).to eq(0)
    end
 
   	it "multiply returns 2 when given 1,2" do
      calc = Calculator.new
      expect(calc.multiply(1, 2)).to eq(2)
    end
    
    it "multiply returns 50 when given 5,10" do
      calc = Calculator.new
      expect(calc.multiply(5, 10)).to eq(50)
    end
  end

  describe "#factorial" do
    it "factorial returns 1 when given 0" do
      calc = Calculator.new
      expect(calc.factorial(0)).to eq(1)
    end
  	  
    it "factorial returns 120 when given 5" do
      calc = Calculator.new
      expect(calc.factorial(5)).to eq(120)
    end  
  	
    it "factorial returns 3628800 when given 10" do
      calc = Calculator.new
      expect(calc.factorial(10)).to eq(3628800)
    end
  end
end