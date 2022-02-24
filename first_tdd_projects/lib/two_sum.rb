class Array

  def two_sum
    arr = []
    (0...self.length - 1).each do |idx1|
      (idx1 + 1...self.length).each do |idx2|
        arr << [idx1, idx2] if self[idx1] + self[idx2] == 0
      end
    end
    arr
  end

end