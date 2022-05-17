# frozen_string_literal: true

def bubble_sort(arr)
  len = arr.length
  passes = 0
  until passes >= len - 1
    # each pass through, need to check one fewer element
    (len - 1 - passes).times do |i|
      arr[i], arr[i + 1] = arr[i + 1], arr[i] if arr[i] > arr[i + 1]
    end
    return arr if sorted?(arr[0..-(passes + 2)])
    passes += 1
  end
  arr
end

def sorted?(arr)
  arr.each_cons(2).all? { |a, b| a <= b }
end

p 'Enter an array of integers separated by spaces'
array = gets.chomp.split(' ').compact.map(&:to_i)
p "Input array: #{array}"
p "Sorted array: #{bubble_sort(array)}"
