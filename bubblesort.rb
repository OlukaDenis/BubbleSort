def bubble_sort(arr)
   len = arr.length
   swap = true
   while swap do
    swap = false
    # puts "Array 1 #{arr}"
    (len-1).times do |n|        
        if arr[n] > arr[n+1]
            arr[n], arr[n+1] = arr[n+1], arr[n]
            # puts "#{arr[n]} , #{arr[n+1]}" 
            swap = true      
        end
    end
   end

arr
end

puts bubble_sort([5, 8, 20, 0, 100, 330, 1, 6])