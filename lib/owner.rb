class Owner

attr_reader :species

OWNERS = []

def initialize(species)
  @species = species
 OWNERS << self
end

def self.all
  OWNERS
end


end
