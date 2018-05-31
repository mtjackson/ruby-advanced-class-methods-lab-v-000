class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def Song.create
    @song = self.new
    @@all << @song
    return @song
  end

  def Song.new_by_name(name)
    @song = self.new
    @song.name = name
    #@@all << @song
    return @song
  end

  def Song.create_by_name(name)
    @song = self.new
    @song.name = name
    @@all << @song
    return @song
  end

  def self.find_by_name(name)
    @@all.detect do |song|
      song.name == name
  end

  def self.find_or_create_by_name
  end

  def self.alphabetical
  end

  def self.new_from_filename
  end

  def self.create_from_filename
  end

  def self.destroy_all
  end

end
