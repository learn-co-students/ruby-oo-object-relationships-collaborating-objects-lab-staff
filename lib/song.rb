class Song
	attr_accessor :name, :artist 

	@@all = []

	def initialize(name)
		@name = name 
		# @artist = artist
		@@all << self
	end

	def self.all 
		@@all 
	end

	def self.new_by_filename(file_name)
		f = file_name.split(" - ")
		a = f[0].strip
		artist = Artist.find_or_create_by_name(a)
		name = f[1].strip
		s = Song.new(name)
		s.artist = artist 
		return s 

	end

	def artist_name=(artist_name)
		a = Artist.find_or_create_by_name(artist_name)
		self.artist = a
	end





end