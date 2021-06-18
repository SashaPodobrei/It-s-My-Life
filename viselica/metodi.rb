def cls
  system('cls') || system('clear')
end

def get_letters
   slovo = ARGV[0]
if slovo == nil || slovo == ''
	abort 'Для игры введите загаданное слово в качестве аргумента при ' \
		'запуске программы'
end
return slovo.split('')
end

def get_user_input
	letter = ""
	while letter == "" do
		letter = STDIN.gets.chomp
	end
	return letter
end

def check_result(user_input, letters, good_letters, bad_letters)

	if good_letters.include?(user_input) || bad_letters.include?(user_input)

	return 0
end	

if letters.include? user_input
	good_letters << user_input
	if letters.uniq.size == good_letters.size
		return 1
	else
		return 0
end
else
	bad_letters << user_input
	return -1
end
end

def get_word_for_print(letters, good_letters)
	result = ""
	for letters in letters do
		if good_letters.include? letters
			result += letters +""
		else
			result +="__"
    end	
  end
return result
end

def 	print_status(letters, good_letters, bad_letters, errors)
puts "\n Слово: " + get_word_for_print(letters, good_letters)
puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"
if errors >= 7
	puts "Вы проиграли :("
	else
		if letters.uniq.size == good_letters.size
			puts "Поздравляем вы выграли"
			else
				puts "У вас осталось попытки:" + (7 - errors).to_s
			end
		end
end



