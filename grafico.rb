def chart(array)
  max = array.max
  value = array.each { |star| puts "|" + ("**" * star) } 
  puts ">" + ("--" * max)
  1.upto(max) { |num| print " #{num}" }
end
