require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  attr_writer
@@all = []
  def initialize(species)
    @name = name
    @species = species
    @pets = {
      fishes: [],
      cats: [],
      dogs: []
    }
    @@all << self
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

  def self.all
    @@all
  end

  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def say_species
    "I am a #{species}."
  end

  def walk_dogs
    @pets[:dogs].each do |x|
      x.mood = "happy"
    end
  end
  def play_with_cats
  end
  def feed_fish
  end
end
