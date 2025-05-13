array = [5, 3, 8, 1, 4, 5, 3, 8, 1, 4]

# 1. Знайти індекс мінімального елемента.
min_index = array.index(array.min)
puts "Індекс мінімального елемента: #{min_index}"

# 2. Знайти індекс максимального елемента.
max_index = array.index(array.max)
puts "Індекс максимального елемента: #{max_index}"

# 3. Знайти індекс першого мінімального елемента.
first_min_index = array.index(array.min)
puts "Індекс першого мінімального елемента: #{first_min_index}"

# 4. Знайти індекс першого максимального елемента.
first_max_index = array.index(array.max)
puts "Індекс першого максимального елемента: #{first_max_index}"

# 5. Знайти індекс останнього мінімального елемента.
last_min_index = array.rindex(array.min)
puts "Індекс останнього мінімального елемента: #{last_min_index}"

# 6. Знайти індекс останнього максимального елемента.
last_max_index = array.rindex(array.max)
puts "Індекс останнього максимального елемента: #{last_max_index}"

# 7. Знайти кількість мінімальних елементів.
min_count = array.count(array.min)
puts "Кількість мінімальних елементів: #{min_count}"

# 8. Знайти кількість максимальних елементів.
max_count = array.count(array.max)
puts "Кількість максимальних елементів: #{max_count}"

# 9. Знайти мінімальний парний елемент.
even_min = array.select(&:even?).min
puts "Мінімальний парний елемент: #{even_min}"

# 10. Знайти мінімальний непарний елемент.
odd_min = array.select(&:odd?).min
puts "Мінімальний непарний елемент: #{odd_min}"

# 11. Знайти максимальний парний елемент.
even_max = array.select(&:even?).max
puts "Максимальний парний елемент: #{even_max}"

# 12. Знайти максимальний непарний елемент.
odd_max = array.select(&:odd?).max
puts "Максимальний непарний елемент: #{odd_max}"

# 13. Вивести спочатку всі парні елементи, а потім — непарні.
even_elements = array.select(&:even?)
odd_elements = array.select(&:odd?)
puts "Парні елементи: #{even_elements}"
puts "Непарні елементи: #{odd_elements}"

# 14. Замінити всі додатні елементи на значення мінімального.
min_value = array.min
replaced_min_array = array.map { |x| x > 0 ? min_value : x }
puts "Масив після заміни додатних елементів на мінімальне значення: #{replaced_min_array}"

# 15. Поміняти місцями мінімальний і максимальний елементи масиву.
min_value, max_value = array.min, array.max
min_index, max_index = array.index(min_value), array.index(max_value)
array[min_index], array[max_index] = max_value, min_value
puts "Масив після обміну мінімального та максимального елементів: #{array}"
