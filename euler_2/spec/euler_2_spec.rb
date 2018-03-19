require 'spec_helper'

describe 'Euler_2 problem' do

  before(:each) do
    @euler2 = Euler2.new
  end

  it "must generate a fibonnaci sequence that does not exceed 90" do
    expect(@euler2.generate(90)).to match_array([1, 2, 3, 5, 8, 13, 21, 34, 55, 89])
  end

  it "must, for a fibonnaci sequence that does not exceed 10, return only the even numbers of that sequence" do
    expect(@euler2.even_generate(10)).to match_array([2,8])
  end

  it "must, for a fibonnaci sequence that does not exceed 10, return the sum of the even numbers of that sequence" do
    expect(@euler2.sum(10)).to eq(10)
  end
end
