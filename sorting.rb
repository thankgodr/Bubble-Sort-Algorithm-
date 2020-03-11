def bubble_sort(arr)
    loop {
        status = false
        (arr.length-1).times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                status = true
            end
        end   
        break if not status
    }   
   arr
end


def bubble_sort_by(arr)
    loop {
        status = false
        (arr.length-1).times do |i|
            if yield(arr[i], arr[i+1]) > 0
                arr[i], arr[i+1] = arr[i+1], arr[i]
                status = true
            end
        end   
        break if not status
    }   
   arr
end