class Owner

attr_reader :species

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
