greeting="hello"

greeting.each_char{|char| puts char}

greeting.each_char.with_index do |char,i|
  puts char
  puts i
  puts "--"
end
