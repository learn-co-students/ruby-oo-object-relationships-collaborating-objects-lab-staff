class Artist
	attr_accessor :name
	@@all = []

	def initialize(name)
		@name = name 
		@@all << self
	end

	def self.all 
		@@all
	end

	def add_song(song)
		song.artist = self 
	end

	def songs 
		Song.all.select{|song| song.artist == self}
	end

	def self.find_or_create_by_name(name)
		for item in @@all do 
			if item.name == name 
				return item 
			end
		end
		Artist.new(name)
	end

	def print_songs
		self.songs.each do |s|
			puts s.name 
		end
		# s = self.songs 
		# puts s 
	end



end