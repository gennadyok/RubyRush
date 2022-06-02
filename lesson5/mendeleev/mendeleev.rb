

if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

table = {
  'H' => 'Кавендиш',
  'He' => 'Локьер, Жансен, Рамзай',
  'Li' => 'Арфведсон',
  'Be' => 'Воклен',
  'B' => 'Дэви и Гей-Люссак',
  'C' => 'неизвестен',
  'N' => 'Резерфорд',
  'O' => 'Пристли и Шееле',
  'F' => 'Муассан',
  'Ne' => 'Рамзай и Траверс'
}

puts "У нас есть #{table.keys.size} элементов"

puts table.keys

element = gets.chomp

if table.key?(element)
  puts "Первооткрыватель элемента: #{table[element]}"
else
  puts "Нет подходящего значения"
end