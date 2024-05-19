def merge_sort(arr)
  return arr if arr.length <= 1

  mid = (arr.length / 2).floor
  left_side = arr[0...mid]
  right_side = arr[mid...]
  left_side = merge_sort(left_side)
  right_side = merge_sort(right_side)

  merge(left_side, right_side)
end

def merge(left, right)
  sorted_array = []
  until left.empty? || right.empty?
    if left.first <= right.first
      sorted_array << left.shift
    else
      sorted_array << right.shift
    end
  end
  sorted_array + left + right
end

puts merge_sort([6, 5, 12, 10, 9, 1, 28, 3])