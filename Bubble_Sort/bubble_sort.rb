def bubble_sort(arr)
  for i in 0...arr.length
    sorted = true

    for k in 0...(arr.length - i - 1)
      if arr[k] > arr[k + 1]
        arr[k], arr[k + 1] = arr[k + 1], arr[k]
        sorted = false
      end
    end
    break if sorted
  end
  arr
end

data = [292, 34, 11, 1, 0, 22, 33, 2, 424, 4, 22, 1, 2, 434, 5, 6, 7, 8, 9]
p bubble_sort(data)
# [0, 1, 1, 2, 4, 5, 6, 7, 8, 9, 11, 22, 22, 33, 34, 292, 424, 434]
