
def provide_mortgage?(salary: 0, deposit: 0, property_value: 0, borrower_bankrpt: true)
  loan_amount = property_value - deposit
  min_deposit = property_value >= 650000 ? 0.2 : 0.05
  var1 = deposit/property_value.to_f
  puts var1
  var2 = loan_amount/salary.to_f
  puts var2
  max_multiplier = var1 >= 0.75 ? var2 : 5 # how many annual incomes can be borrowed
  puts max_multiplier
  if borrower_bankrpt == true 
  	puts "Sorry sunshine, not today thank you."
  end
  deposit >= property_value * min_deposit && salary * max_multiplier >= loan_amount && borrower_bankrpt == false

end



# test_1 = {salary => 30000, deposit => 50000, property_value => 200000}

# true
# salary 30,000, deposit 50,000, property_value 300,000
# false
# salary 50,000, deposit 40,000, property_value 200,000
# true
# salary 80,000, deposit 100,000, property_value 500,000
# true
# salary 35,000, deposit 60,000, property_value 300,000
# false


puts provide_mortgage?(property_value: 1000000, salary: 10000, deposit: 800000, borrower_bankrpt: true)

