require 'spec_helper'

describe Taxable do
  it 'has a version number' do
    expect(Taxable::VERSION).not_to be nil
  end

  describe "splitting the income based on the known brackets" do
    it "returns the first amount if under or equal to 1982200" do
      amount = Taxable.split_income(1982200)
      expect(amount).to eq([1982200, 0, 0, 0])
    end

    it "returns the first and second amount if above 1982300" do
      amount = Taxable.split_income(2200000)
      expect(amount).to eq([1982200, 217800, 0, 0])
    end

    it "returns the first, second and third amount if between € 33.590 and € 57.585" do
      amount = Taxable.split_income(3800000)
      expect(amount).to eq([1982200, 1376700, 441100, 0])
    end


    it "returns the first, second, third and fourth amount if above 5785600" do
      amount = Taxable.split_income(7700000)
      expect(amount).to eq([1982200, 1376700, 2399600, 1941500])
    end

  end

  it "calculates the income based on price" do
    pending "first implement the split income tests"
    net_income = Taxable.calculate_net_income_for(19822)
    expect(net_income).to eq(12587)
  end

  it "calculate with bracket one and two for a net income of 22.000" do
    net_income = Taxable.calculate_net_income_for(22000)
    expect(net_income).to eq(13851)
  end

end
