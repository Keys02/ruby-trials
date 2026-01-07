class Song
  attr_reader :state
  attr_writer :title
    
  def initialize(title)
    @title = title
  end
  
  def play
    put "Playing #{@title}"
  end
end

def make
    puts "What the hell are you doing here"
end

song1 = Song.new('Ruby Tuesday')
song2 = Song.new('Evnveloped in Python')
song3 = song1

# An object and it's clone has the same object id
puts song1.object_id
puts song3.object_id
song3.play