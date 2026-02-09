class Human
  attr_reader :name, :age

  def initialize(name, age)
    @name = name
    @age = age.to_i
  end

  def sing(song_title, song_artist)
    puts "#{@name} is singing the song #{song_title} by #{song_artist}"
  end

  def sing_and_dance(song_title, song_artist)
    sing(song_title, song_artist)
    dance()
  end

  private
  def dance()
    puts "#{@name} is dancing alongside the song"
  end

end

chris = Human.new('Chris', 23)
chris.sing_and_dance("Happier than ever", "Billie Eilish")

brida = Human.new('Brida', 25.99999999999999)
brida.sing_and_dance("Another Love", "Tom Odell")