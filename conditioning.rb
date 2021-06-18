puts "Введите заданную температуру в комнате (целое число от -50 до 50)"
t_room = gets.chomp.to_i
puts "Введите желаемую температуру в комнате (целое число от -50 до 50)"
t_cond = gets.chomp.to_i

if t_room <= 50 && t_cond <= 50 && t_room >= -50 && t_cond >= -50
else
	puts "не допустимое число. Пожалуйста введите целое число от -50 до 50"
	exit
end

puts "Введите режим работы кондиционера (freeze, heat, auto, fan)"
mode = gets.downcase.chomp

if mode == "freeze" 
	if t_room > t_cond
		puts t_cond
	else
		puts t_room
	end
elsif mode == "heat" 
	if t_room < t_cond
		puts t_cond
	else
		puts t_room
	end
elsif mode == "auto" 
	puts t_cond
elsif mode == "fan" 
	puts t_room
else
	puts "Такого режима работы не существует"
end
