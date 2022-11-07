class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

    def initialize (name, artists, genre)
        @name = name
        @artist = artists
        @genre = genre
        @@genres << genre
        @@count += 1
        @@artists << artists
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

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

end