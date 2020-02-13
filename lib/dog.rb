# Add your code here
class Dog
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.clear_all
    @@all.clear
  end

  def self.all
    @@all.each do |d|
      puts d.name
    end
  end
  
  def self.print_all
    @@all.each do |dog|	
      puts dog.name	
    end  
  end  
  
  def save
    self.class.all << self
  end
  
end