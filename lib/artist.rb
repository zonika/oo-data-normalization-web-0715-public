# Implement an artist class below.
# The serialize method should replace spaces in 
# the song title with underscores and write to 
# the current working directory
class Artist
  attr_reader :name
  def initialize(name)
    @name = name
  end
end