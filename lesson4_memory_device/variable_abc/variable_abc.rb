# ruby variable_abc.rb

$a = 1

b = 2

def method
  c = 3

  puts "Переменная " + "$a: #{defined?($a)}"
  puts "Переменная " + "b: #{defined?(b)}"
  puts "Переменная " + "c: #{defined?(c)}"
end

method

puts "Переменная " + "$a: #{defined?($a)}"
puts "Переменная " + "b: #{defined?(b)}"
puts "Переменная " + "c: #{defined?(c)}"