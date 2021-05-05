def frequent_letters(string)
    count=Hash.new(0)
    string.each_char{|char| count[char]+=1}
    #puts count
    freq=[]
    count.each do |k,v|

        if v>2
            freq<<k 
        end
