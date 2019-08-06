class Owner

attr_reader :species
attr_accessor :name

@@all = []

def initialize(name)
  @name = name
  @species = "human"
  @@all << self
end

def self.all
  @@all
end

def self.count
 self.all.length
end

def self.reset_all
  self.all.clear
end

def say_species
 "I am a #{@species}."
end

def pets

end

end
