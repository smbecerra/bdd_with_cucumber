require 'caffeinate'

Given("Maria orders ${int} of coffee from Li") do |int|
  @maria = Customer.new
  @li = Associate.new
  @price = int
  @card_minimum = 2
  @maria.orders
end

When("Maria pays with a credit Card") do
   @maria.pays_with_credit
end

Then("Li should process the payment") do
  expect(@li.process_payment(@price, @card_minimum)).to include(true)
end

Then("Li should not process the payment") do
  expect(@li.process_payment(@price, @card_minimum)).to include(false)
  expect(@li.process_payment(@price, @card_minimum)).to include('request_cash')
end
