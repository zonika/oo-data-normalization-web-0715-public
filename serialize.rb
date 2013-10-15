RSpec.configure do |config|
  # Use color in STDOUT
  config.color_enabled = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :progress # :progress, :html, :textmate
end

#implement a song class and artist class to pass the specs below.
#serialize method should replace spaces in the song title with underscores
#and write to the current working directory

class Song
  
end

class Artist
  
end

describe Song do
  it "has a title" do
    song = Song.new
    song.title = "Night Moves"
    song.title.should eq("Night Moves")
  end

  it "has an artist" do
    song = Song.new
    song.title = "Night Moves"
    song.artist = Artist.new("Bob Seger")
    song.artist.name.should eq("Bob Seger")
  end

  it "can save a representation of itself to a file" do
    song = Song.new
    song.title = "Night Moves"
    song.artist = Artist.new("Bob Seger")
    song.serialize
    File.read("night_moves.txt").should match /Bob Seger - Night Moves/
  end

end