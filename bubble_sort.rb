def bubble_sort(arr)
  len = arr.length
  passes = 0
  until passes >= len - 1
    # each pass through, need to check one fewer element
    for i in (0..(len - 2 - passes))
      if arr[i] > arr[i+1]
        arr[i], arr[i+1] = arr[i+1], arr[i]
        # p arr
        # p "passes is #{passes}"
        # p "index is #{i}"
      end
      return arr if is_sorted?(arr)
    end
    passes += 1
    # p "passes after incrementing is #{passes}"
  end
  arr
end

def is_sorted?(arr)
  arr.each_cons(2).all? { |a, b| a <= b }
end

p "Enter an array of integers separated by spaces"
array = gets.chomp.split(" ").compact.map { |n| n = n.to_i }
p "Input array: #{array}"
p "Sorted array: #{bubble_sort(array)}"