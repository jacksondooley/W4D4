require 'rspec'
require 'my_transpose'

describe "my_transpose" do
  it "if array is empty, return empty array" do
    arr = []
    expect(my_transpose(arr)).to be_empty if arr.empty?
  end

  it "Array should be return transpose" do
    
  end

  it "Don't use build-in Array#transpose" do
    arr = [[1, 2, 1], [3, 3]]
    expect(my_transpose(arr)).to_not receive(:transpose)
  end



end