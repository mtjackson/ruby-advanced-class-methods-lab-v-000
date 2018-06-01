class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    song = self.new
    @@all << song
    return song
  end

  def self.new_by_name(name)
    song = self.new
    song.name = name
    #@@all << @song
    return song
  end

  def self.create_by_name(name)
    song = self.new
    song.name = name
    @@all << song
    return song
  end

  def self.find_by_name(name)
    @@all.detect do |song|
      song.name == name
    end
  end

  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
       return self.find_by_name(name)
    else
      self.create_by_name(name)
    end

  end

  def self.alphabetical
    @@all.sort_by {|song1, song2| song1 <=> song2}
  end

  def self.new_from_filename
  end

  def self.create_from_filename(file_name)
    song = self.new
    song.name = file_name.split(".")[0].join
    @@all << song
    return song
    #song = self.new
    #song.name = name
    #@@all << song
    #return song
  end

  def self.destroy_all
    @@all = []
  end

end
