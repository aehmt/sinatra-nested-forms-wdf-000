class Ship
  attr_accessor :name, :type, :booty, :pirate
  @@all = []

  def initialize(attr)
    attr.each {|key, value| self.send(("#{key.to_s}="), value)}
    @@all << self
  end 
  
  def self.all
    @@all
  end

  def self.clear
    @@all.clear
  end
end
