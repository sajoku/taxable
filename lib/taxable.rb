require "taxable/version"

module Taxable

  def self.split_income(income)
    case
    when income <= 1982200
      first_amount = 1982200
      second_amount = 0
      third_amount = 0
      fourth_amount = 0
    when income.between?(1982300, 3358900)
      first_amount = 1982200
      second_amount = income - 1982200
      third_amount = 0
      fourth_amount = 0
    when income.between?(3359000, 5758500)
      first_amount = 1982200
      second_amount = 1376700
      third_amount =  income - first_amount - second_amount
      fourth_amount = 0
    when income >= 5758600
      first_amount = 1982200
      second_amount = 1376700
      third_amount = 2399600
      fourth_amount =  income - first_amount - second_amount - third_amount
    end

    [first_amount, second_amount, third_amount, fourth_amount]
  end

end
