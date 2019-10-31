# frozen_string_literal: true

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
      my_values = yield(arr[n], arr[n + 1])
      next unless my_values.positive?

      arr[n], arr[n + 1] = arr[n + 1], arr[n]
      swap = true
    end
  end

  arr
end

puts 'Starting numeric sort tests...'
puts "\n"
print bubble_sort([5, 8, 20, 0, 100, 330, 1, 6])
puts "\n"
print bubble_sort([2, 7, 9, 13, 0, 4, 4, 800, 31])
puts "\n"
print bubble_sort([0, 0, 0, 3, 78, 1, 1])
puts "\n"
print bubble_sort([1987, 2012, 4590, 3632, 8363])
puts "\n"
puts "\n"
# Custom test, please specify a random number array
# puts bubble_sort([ENTER YOUR VALUES HERE])
puts 'End of numeric testing.'
puts "\n"
puts 'Starting string sort tests...'
puts "\n"
puts "\n"

print(bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end)
puts "\n"
print(bubble_sort_by(['I', 'Like', 'Web development', 'Everything works']) do |left, right|
  left.length - right.length
end)
puts "\n"
print(bubble_sort_by(%w[No Sorting Sort Yes Unsorted]) do |left, right|
  left.length - right.length
end)
puts "\n"
print(bubble_sort_by(%w[Randomness hello Goodbye Techlead Promo]) do |left, right|
  left.length - right.length
end)
puts "\n"
# Custom test please specify a random string array the result will be sorted by length
# print (bubble_sort_by([ENTER YOUR VALUES HERE]) do |left,right|
#  left.length - right.length
# end)
puts "\n"
puts 'End of testing'
