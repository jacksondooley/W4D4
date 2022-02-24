def my_transpose(arr) 
  return [] if arr.empty?
  transposed = Array.new(arr[0].length) { Array.new(arr.length)}
  arr.each.with_index do |row, idx1|
    row.each.with_index do |ele, idx2|
      transposed[idx2][idx1] = arr[idx1][idx2]
    end
  end
  transposed
end