if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end


require_relative 'Parents'
require_relative 'Children'

parent = Parents.new("Иван Иваныч")
child = Children.new("Маша")

puts "#{parent.name} послушный: #{parent.obedient}"
puts "#{child.name} послушный: #{child.obedient}"