original_file = File.open('notas.txt')
data = original_file.readlines.map(&:chomp) 
original_file.close 



def nota_mas_alta(student)
  modified_data = student.gsub(',', ' ').split(' ')
  grades = modified_data[1..-1].map { |grade| grade.to_i }
  highest_grade = grades.max
end


# puts nota_mas_alta(data[4])




=begin
File.open('resultados.txt', 'w' ) do |file|
  new_data.each{  |line| file.puts line }
end
=end