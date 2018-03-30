
Feature: Prime Number Generator 

Scenario Outline: To generate ordered list of all prime numbers in a given range (inclusive of the endpoints).
  When I Enter StartNumber <startnumber> 
  And I Enter EndNumber <endnumber>
  And Expected Result <expectedresult>
  Then I should see the Test result

Examples:
  | startnumber | endnumber | expectedresult 	| 
  | 7920 		| 7901 		| 7919, 7907, 7901 	| 
  | 1 			| 1 		| No Prime Number 	| 
  | 1 			| 10 		| 2, 3, 5, 7     	| 
  | 1# 			| 11 		| Invalid input! 	| 
  | 11 			| 1ab 		| Invalid input!	| 
