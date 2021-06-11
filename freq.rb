def frequent_letters(string)
    count=Hash.new(0)
    string.each_char{|char| count[char]+=1}
    #puts count
    freq=[]
    count.each do |k,v|

        if v>2
            freq<<k 
        end
    end
    return freq
   
    
end
=begin
practice output
  print frequent_letters('mississippi') #=> ["i", "s"]
  puts
  print frequent_letters('bootcamp') #=> []
  puts
=end
