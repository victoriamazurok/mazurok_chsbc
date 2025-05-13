require 'json'

file = File.read('users.json')
users = JSON.parse(file)
users.each do |user|
  puts "Name: #{user['name']}, Age: #{user['age']}"
end
total_age = users.sum { |user| user['age'] }
average_age = total_age.to_f / users.size
puts "Average age: #{average_age}"