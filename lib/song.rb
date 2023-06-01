class Song

    @@count = 0
    @@genres = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
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
      genre_histogram = Hash.new(0)
      @@genres.each { |genre| genre_histogram[genre] += 1 }
      genre_histogram
    end

    def self.artist_count
       artist_histogram = Hash.new(0)
       @@artists.each { |artist| artist_histogram[artist] += 1 }
       artist_histogram
    end

end