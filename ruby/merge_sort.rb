def merge_sort(arr)
  return arr if arr.length <= 1

  mid = (arr.length / 2).floor
  left_side = arr[0...mid]
  right_side = arr[mid...]
  left_side = merge_sort(left_side)
  right_side = merge_sort(right_side)

  temporary_array = []

  if left_side.first  <= right_side.first
    temporary_array << left_side.shift
  else
    temporary_array << right_side.shift
  end
  temporary_array + left_side + right_side
end
puts merge_sort([6, 5, 12, 10, 9, 1, 28, 3])