# ruby defined_variable.rb

puts "defined_variable v1. тест на обьявленные переменные"

sleep(2)

a = 1

if defined?(a)
  puts "Переменная определена"
else
  puts "Переменная не определена"
end

if defined?(b)
  puts "Переменная определена"
else
  puts "Переменная не определена"
end