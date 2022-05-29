if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

require "digest"

puts "Введите слово или фразу для шифрования:"

user_words = STDIN.gets.chomp

puts "Каким способом зашифровать:"
puts "1. MD5"
puts "2. SHA1"

user_wey = STDIN.gets.chomp

puts "Вот что получилось:"

if user_wey == 1

  puts Digest::MD5.hexdigest "user_words"

else

  puts Digest::SHA1.hexdigest "user_words"

  end
