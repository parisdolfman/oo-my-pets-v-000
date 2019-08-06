class Owner

attr_reader :species
attr_accessor :name, :pets

@@all = []

def initialize(name)
  @name = name
  @species = "human"
  @@all << self
  @pets = {:fishes => [], :dogs => [], :cats => []}
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

def buy_fish(name)
  @pets[:fishes] << Fish.new(name)
end

def buy_cat(name)
  @pets[:cats] << Cat.new(name)
end

def buy_dog(name)
  @pets[:dogs] << Dog.new(name)
end

def walk_dogs
  @pets.collect do |animal, instance|
    if animal == :dogs
      instance.each do |dog|
        dog.mood = "happy"
      end
    end
  end
end

def play_with_cats
  @pets.collect do |animal, instance|
    if animal == :cats
      instance.each do |cat|
        cat.mood = "happy"
      end
    end
  end
end

def feed_fish
  @pets.collect do |animal, instance|
    if animal == :fishes
      instance.each do |fish|
        fish.mood = "happy"
      end
    end
  end
end

def sell_pets
  @pets.collect do |animal, instance|
      instance.each do |pet|
        pet.mood = "nervous"
    end
    instance.clear
  end
end

def list_pets
  dogs = @pets[:dogs].size
  cats = @pets[:cats].size
  fish = @pets[:fishes].size
  return "I have #{fish} fish, #{dogs} dog(s), and #{cats} cat(s)."
end

end
