# ruby memory_usage.rb
#
if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

number = 42
string = "Василий"

puts "В числе 42 " + number.size.to_s + " байт"
puts "В строке " "Василий " + string.bytesize.to_s + " байт"