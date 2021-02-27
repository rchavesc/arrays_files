original_file = File.open('ventas_base.txt')
data = original_file.readlines.map(&:chomp) 
original_file.close 

modified_data = data[0].gsub(',', ' ').split(' ')

def projections(array, augmented_by, starting_index, ending_index)
  total_sale = array.map { |sale| (sale.to_f * augmented_by.to_f) + sale.to_f }
  total_sale[starting_index..ending_index].sum
end

first_semester = projections(modified_data, 0.1, 0, 5).to_s
second_semester = projections(modified_data, 0.2, 6, 11).to_s 

new_data = [first_semester, second_semester]

File.open('resultados.txt', 'w' ) do |file|
  new_data.each{  |line| file.puts line }
end
