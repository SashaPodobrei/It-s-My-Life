h = {111 => 100, 222 => 200, 333 => 300, 444 => 400, 555 => 500, 666 => 600, 777 => 700, 888 => 800, 999 => 900}
balanc = 100
loop do
	puts "Press Enter to play"
	gets
	a = rand (100..999)
	if h[a]
		puts "victory + #{h[a]} $"
				balanc = balanc + h[a]
		else
			puts "losse - 10 &"
			balanc = balanc - 10
		end
	puts "Your balance: #{balanc} $"
end