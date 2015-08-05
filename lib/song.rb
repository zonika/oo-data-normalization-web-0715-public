require 'tempfile'
require_relative 'artist'
require 'pry'
class Song
  # code goes here
  attr_accessor :title, :artist
  def initialize

  end
  # def artist=artist
  #   @artist=artist
  # end
  def serialize
    filetitle=[@title.downcase.gsub(" ","_") , '.txt']
    filetext=@artist.name + ' - ' + @title
    file=Tempfile.new(filetitle, './tmp')
    file.write(filetext)
    file.flush
    # file.rewind
    # binding.pry
    # file.close
  end
end
# taylor_swift = Artist.new("Taylor Swift")
# blank_space = Song.new
# blank_space.title="Blank Space"
# blank_space.artist = taylor_swift
# blank_space.serialize
