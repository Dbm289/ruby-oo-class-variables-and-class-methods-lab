require 'pry'

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []


    


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        
        @@count += 1
        @@genres<<genre
        @@artists<<artist
    
    end

    def self.count 
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq

    end

    def self.artist_count
        #binding.pry
        artist_count = {}
        self.artists.each do |musician|
            artist_count[musician] = @@artists.filter{|a| a == musician}.length
            #binding.pry
            
        end

        artist_count
        
    end

    def self.genre_count
        genre_count = {}
        self.genres.each do |style|
            binding.pry
            genre_count[style] = @@genres.filter{|a| a == style}.length
        end

    end

    genre_count

end