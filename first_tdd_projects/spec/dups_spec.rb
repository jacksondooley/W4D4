require "rspec"
require "dups"

describe "Array" do 
  let(:arr) { Array.new([3])}

  describe "#my_uniq" do 
    it "if array is empty then return empty array" do 
      arr = []
      expect(arr).to be_empty if arr.empty?
    end


    it "Array should only return uniq element" do 
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1, 2, 3])
      expect(["a", "b", "a"].my_uniq).to eq(["a", "b"])
    end

    it "Array should not use the #uniq method" do
      arr = [1, 2, 1, 3, 3]
      expect(arr).to_not receive(:uniq)     
    end
   

  end

end