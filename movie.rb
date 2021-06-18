class Movie 

	def initialize (name, surname)
		@name = name
		@surname = surname
	end

	def name
		return @name
	end

	def surname
		return @surname
	end

end

puts "Which director do you want to watch?"
surname = gets.chomp
movies = []
while movies.size < 3
	puts "Any of his good films?"
	film_name = gets.chomp
	movie = Movie.new(film_name, surname)
	movies << movie
end
movie = movies.sample
puts "And tonight I recommend watching: #{movie.name}"
puts "Director: #{movie.surname}"