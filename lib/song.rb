class Song
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []

  def initialize(name, artist = nil, genre = nil)
    @name = name
    self.genre = genre if genre
    self.artist = artist if artist
    self.save
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(name)
    song = self.new(name)
    song.name = name
    return song
  end

  def artist=(artist)
    if @artist == nil
      @artist = artist
    else @artist = @artist
    end
    if self.artist != nil
      @artist.add_song(self)
    end
    return @artist
  end

  def genre=(genre)
    @genre = genre
    if !(genre.songs.include?(self))
    genre.songs << self
  end
 end

  def self.find_by_name(name)
    @@all.find do |song|
      song.name == name
    end
  end

  def self.find_or_create_by_name(name)
      if @@all.find 
        do |song|
      song.name == name
      end
    end
  end
end
