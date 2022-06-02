if (Gem.win_platform?)
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

data = {
  "Билет" => "№ РМ2010398 050298",
  "Маршрут" => "Москва — Петушки",
  "Пассажир" => "Венедикт В. Ерофеев",
  "Паспорт" => "45 99 505281"
}

puts "Билет пассажира: #{data["Билет"]}"
puts "Маршрут пассажира: #{data["Маршрут"]}"
puts "Пассажир: #{data["Пассажир"]}"
puts "Паспорт пассажира: #{data["Паспорт"]}"