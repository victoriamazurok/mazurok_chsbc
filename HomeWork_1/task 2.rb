puts "Бонус. Простий калькулятор."

def perform_operation(num1, operator, num2)
  case operator
  when '+'
    num1 + num2
  when '-'
    num1 - num2
  when '*'
    num1 * num2
  when '/'
    if num2 == 0
      "Помилка! Ділення на нуль неможливе."
    else
      num1.to_f / num2.to_f
    end
  else
    "Невідомий оператор: #{operator}"
  end
end

loop do
  print "Введіть приклад (наприклад, 5 + 3, 10 * 2, exit): "
  вхід = gets.chomp.downcase
  if вхід == "exit"
    puts "Дякую за використання калькулятора!"
    break
  end
  parts = вхід.split
  if parts.length != 3
    puts "Невірний формат вводу. Будь ласка, введіть 'число оператор число'."
    next
  end
  begin
    num1 = Float(parts[0])
    operator = parts[1]
    num2 = Float(parts[2])
    result = perform_operation(num1, operator, num2)
    puts "Результат: #{result}"
  rescue ArgumentError
    puts "Помилка! Не вдалося розпізнати числа. Будь ласка, введіть числа у правильному форматі."
  end
end
