original_file = File.open('notas.txt')
data = original_file.readlines.map(&:chomp) 
original_file.close 



def nota_mas_alta(student_array)
  student_array.map do |student| 
    student_grades = student.gsub(',', ' ').split(' ')
    grades = student_grades[1..-1].map { |grade| grade.to_i }.max
    [student_grades[0], grades ]
  end
end

print nota_mas_alta(data)


