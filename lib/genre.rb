class Genre
  attr_accessor :name
  attr_writer :artists
  @@all = []

  def initialize(name)
    self.name = name
    self.save
    @songs = []
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
    genre = self.new(name)
    genre.name = name
    return genre
  end

  def songs
    @songs
  end

  def artists
    artists = @songs.collect do |songs|
      songs.artists
    end
  end
end
