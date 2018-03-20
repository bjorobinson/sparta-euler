require 'spec_helper'

describe 'Euler_1 problem' do

  before(:each) do
    @euler1 = Euler1.new
  end

  it "should create a range of x to y" do
    expect(@euler1.range(1,10)).to match_array(1..10)
  end

  it "should, for a given range, return the values in that range that are divisible by 3" do
    expect(@euler1.div_3(1,10)).to match_array([3,6,9])
  end

  it "should, for a given range, return the values in that range that are divisible by 5, but not including 10" do
    expect(@euler1.div_5(1,10)).to match_array([5])
  end

  it "should, for a given range, return the values in that range that are divisible by 3 and 5, but not including 10, and not including repeats" do
    expect(@euler1.div(1,10)).to match_array([3,5,6,9])
  end

  it "should, for a given range, return the sum of all values in the range that are divisible by 3 and 5, but not including 10" do
    expect(@euler1.add(1,10)).to eq(23)
  end

end
