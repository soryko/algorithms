def merge_sort(arr)
  if arr.length == 1
    return arr  
  else
    r = (arr.length) / 2
    left_side = arr[0..r]
    right_side = arr[r..]
    merge_sort(left_side)
    merge_sort(right_side)
  end

  x = y = z = 0

  temporary_array = arr.duplicate

  while x < left_side.length && y < right_side.length
    if left_side[x] < right_side[y]
      temporary_array[z] = left_side[x]
      x += 1
    else
      temporary_array[z] = right_side[y]
      y += 1
    end
    z += 1
  end
  temporary_array
end
puts merge_sort([6, 5, 12, 10, 9, 1])