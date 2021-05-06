# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

def compress_str(str)

    num=1
    newstr=""
    (0...str.length).each do |ind|
        if str[ind]==str[ind+1]
            num+=1
        else 
            if (num>1)
                newstr=newstr+num.to_s++str[ind]
            else
                newstr=newstr+str[ind]
            end
            
            num=1
        end
    end
    newstr
end


p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
