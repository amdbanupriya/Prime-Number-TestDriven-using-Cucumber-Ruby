
When(/^I Enter StartNumber (.*)$/) do |startnumber|
$start_number = startnumber
end
And(/^I Enter EndNumber (.*)$/) do |endnumber|
$end_number = endnumber
end
And(/^Expected Result (.*)$/) do |expectedresult|
$expectedresult = expectedresult
end
Then(/^I should see the Test result$/) do 

module PrimeNumberGenerator 
	def generate(startingValue,endingValue)
	end

  def isPrime(n)    
  end
end


class PrimeNumberCollection
  include PrimeNumberGenerator
	 def TestDrivenResult(startnumber,endnumber)
      if startnumber =~ /^-?[0-9]+$/ && endnumber =~ /^-?[0-9]+$/ 
        results = generate(startnumber.to_i,endnumber.to_i)
        if(results.length >0)
          return results
        else
          return "No Prime Number"
        end
      else
        return "Invalid input!" 
      end
    end

    def generate(startingValue,endingValue)
      result = Array.new
      if startingValue <= endingValue
        while startingValue <= endingValue
          if(isPrime(startingValue))
            result.push(startingValue)
          end
        startingValue += 1
        end
      else
        while  startingValue >= endingValue
          if(isPrime(startingValue))
            result.push(startingValue)
          end
          startingValue -= 1
        end
      end
  	  return result.join(", ")
    end

    def isPrime(n)
      return false if n < 2 
      return true  if n == 3 || n == 2 
      for i in 2..n-1
        if n % i == 0
          return false
        end
      end
      return true
    end
end
	c1 = PrimeNumberCollection.new
	
	if(c1.TestDrivenResult($start_number,$end_number) == $expectedresult)
		puts "Test Case Pass"
	else
		puts "Test Case Fail"
	end

  puts "Actual Result: #{c1.TestDrivenResult($start_number,$end_number)}"
end
