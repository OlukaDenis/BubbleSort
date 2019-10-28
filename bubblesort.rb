def bubble_sort(arr)
  len = arr.length
  swap = true
  while swap
    swap = false
    (len - 1).times do |n|
      next unless arr[n] > arr[n + 1]
      arr[n], arr[n + 1] = arr[n + 1], arr[n]
      swap = true
    end
  end

  arr
end

def bubble_sort_by(arr)
  len = arr.length
  swap = true
  while swap
    swap = false
    (len - 1).times do |n|
      next unless yield first > second
      first, second = second, first
      swap = true
    end
  end

  arr
end

print bubble_sort([5, 8, 20, 0, 100, 330, 1, 6])
puts "\n"
print bubble_sort([2, 7, 9, 13, 0, 4, 4, 800, 31])
puts "\n"
print bubble_sort([0, 0, 0, 3, 78, 1, 1])
puts "\n"
print bubble_sort([1987, 2012, 4590, 3632, 8363])
puts "\n"
# Custom test, please specify a random number array
# puts bubble_sort([insert your values here])

bubble_sort_by(["hi","hello","hey"]) do | first , second |
  first.length - second.length
end
