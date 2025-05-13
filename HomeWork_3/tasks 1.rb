tasks = []

def show_menu
  puts "\n1. Додати нову задачу"
  puts "2. Показати всі задачі"
  puts "3. Видалити задачу"
  puts "4. Вийти"
  print "\nВиберіть опцію: "
end

def add_task(tasks)
  print "Введіть назву задачі: "
  task = gets.chomp
  tasks << task
  puts "Задачу додано!"
end

def show_tasks(tasks)
  if tasks.empty?
    puts "Задач не знайдено."
  else
    puts "\nПоточні завдання:"
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task}"
    end
  end
end

def delete_task(tasks)
  if tasks.empty?
    puts "Немає задач для видалення."
    return
  end
  show_tasks(tasks)
  print "Введіть номер завдання, яке потрібно видалити: "
  index = gets.to_i
  if index.between?(1, tasks.length)
    removed = tasks.delete_at(index - 1)
    puts "Завдання '#{removed}' видалено."
  else
    puts "Невірний номер задачі."
  end
end

loop do
  show_menu
  choice = gets.chomp
  case choice
  when "1"
    add_task(tasks)
  when "2"
    show_tasks(tasks)
  when "3"
    delete_task(tasks)
  when "4"
    puts "До зустрічі!"
    break
  else
    puts "Помилка задачі. Спробуйте ще раз."
  end
end
