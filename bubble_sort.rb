def bubble_sort(a)
    $result_array=a
    $sorted =false

    def sorting
        $sorted = true
        for i in 0..$result_array.length-2
            if $result_array[i]>$result_array[i+1]
                buffer = $result_array[i]
                $result_array[i] = $result_array[i+1]
                $result_array[i+1] = buffer
                $sorted = false
            end
        end
    end   

    while $sorted==false
        sorting()
    end

    return $result_array
end

p bubble_sort([4,6,2,7,9,5,6,2,0,5,2,4,5,6,7,9])