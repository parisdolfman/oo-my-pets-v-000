class Cat

attr_reader :name #name passed as initialized argument cannot be changed only read what is written

attr_accessor :mood #object can change as it reader & writer method

def initialize(name)
@name = name
@mood = "nervous"
end










end
