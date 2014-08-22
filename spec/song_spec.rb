require_relative "./spec_helper.rb"

describe Song do
  it "has a title" do
    song = Song.new
    song.title = "Night Moves"
    expect(song.title).to eq("Night Moves")
  end

  it "has an artist" do
    song = Song.new
    song.title = "Night Moves"
    song.artist = Artist.new("Bob Seger")
    expect(song.artist.name).to eq("Bob Seger")
  end

  it "can save a representation of itself to a file" do
    song = Song.new
    song.title = "Night Moves"
    song.artist = Artist.new("Bob Seger")
    song.serialize
    expect(File.read("night_moves.txt")).to match /Bob Seger - Night Moves/
  end

end