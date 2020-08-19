def stock_picker(a)
    pairs_of_days = {}
    length = a.length

    for i in 0..length-2 do
        for j in i+1..length-1 do
            if a[i]<a[j]
                # puts i j
                current_pair = [i,j] 
                pairs_of_days[current_pair] = (a[j] - a[i])
            end
        end 
    end
    best_days_from_hash = pairs_of_days.max_by{|k,v| v} 
    return best_days_from_hash
end

p stock_picker([17,3,6,9,15,8,6,1,10])