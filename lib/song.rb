# Implement a song class below.
# The serialize method should replace spaces in 
# the song title with underscores and write to 
# the current working directory
class Song
  attr_accessor :title, :artist

  def serialize
    new_title = self.title.gsub(" ", "_")
    open("#{new_title}.txt", 'w') do |f|
      f.puts "#{self.artist.name} - #{self.title}"
    end 
  end
end