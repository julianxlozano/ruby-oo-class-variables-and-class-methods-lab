require 'pry'



class Song
    attr_accessor :name, :artist, :genre 
    @@count = 0
    @@genres=[]
    @@artists=[]

    def initialize(name,artist,genre)
        @name = name 
        @@count += 1 
        @artist = artist
        @genre = genre 
        @@genres << genre
        @@artists << artist 
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq  
    end

    def self.artists
        @@artists.uniq 
    end

    def self.genre_count
        histogram={}
        @@genres.each do |genre|
           histogram[genre] = @@genres.count(genre)
        end
        histogram 
    end

    def self.artist_count
        histogram={}
        @@artists.each do |artist|
           histogram[artist] = @@artists.count(artist)
        end
        histogram 
    end


end