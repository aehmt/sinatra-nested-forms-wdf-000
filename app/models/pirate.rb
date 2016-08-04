class Pirate
  attr_accessor :name, :weight, :height
  attr_reader :ships

  @@all = []

  def initialize(attr)
    attr.each {|key, value| self.send(("#{key.to_s}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def ships=(ships)
    @ships = ships.map do |ship|
       new_ship = Ship.new(ship)
       new_ship.pirate = self
       new_ship
     end 
  end 

  def self.clear
    @@all.clear
  end
end
