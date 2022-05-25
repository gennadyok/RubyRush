def dice_roll
  100.times do
    print "#{rand(6) +1}\r"
    sleep 0.01
  end
end

puts "how many dice?"

num = gets.to_i

summ_dice = 0

num.times do
  dice_roll
  roll = rand(1..6) +1
  summ_dice += roll
  puts roll
end

puts "Сумма всех костей: " + summ_dice.to_s

