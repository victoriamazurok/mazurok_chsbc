# Завдання 1: Створіть програму на Ruby для знаходження найбільш частого елемента в масиві
  def find_most_frequent_elements(array)
    frequency = Hash.new(0)
    array.each { |element| frequency[element] += 1 }
    max_frequency = frequency.values.max || 0
    most_frequent = frequency.select { |_, freq| freq == max_frequency }.keys
    most_frequent
  end
  puts "Введіть масив для аналізу: "
  array1 = gets.split
  result1 = find_most_frequent_elements(array1)
  puts "Для масиву #{array1} найбільш частий елемент(-и): #{result1.join(', ')}"
  puts