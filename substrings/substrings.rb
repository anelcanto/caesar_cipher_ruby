def substrings(phrase, dictionary)
    result = {}
    puts "\n"
    phrase.gsub!(/[',!?]/," ")
    
    dictionary.each do |sub|
        phrase.split.sort.each do |word|
        if word.downcase.include? sub
            if result.has_key? sub
                result[sub] +=1
            else
                result[sub]=1
            end
        end
    end
end
return result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

