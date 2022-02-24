require "rspec"
require "two_sum"

describe Array do

  it "if array is empty then return empty array" do 
    arr = []
    expect(arr).to be_empty if arr.empty?
  end

  it "finds all pairs of positions where the elements at those positions sum to zero" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    expect([-1, 1].two_sum).to eq([[0, 1]])
  end

  it "returns empty if there are no pairs" do
    expect([-5, 0, 2, -689, 1].two_sum).to be_empty
  end

end

