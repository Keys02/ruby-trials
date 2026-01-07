class Song
    attr_reader :state
    attr_writer :name
    
    def initialize(name)
        @name = name
    end
end

song1 = Song.new('Ruby Tuesday')
song2 = Song.new('Evnveloped in Python')
song3 = song1

# An object and it's clone has the same object id
puts song1.object_id
puts song3.object_id