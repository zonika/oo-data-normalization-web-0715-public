require_relative "./spec_helper.rb"

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