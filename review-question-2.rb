class Car
  attr_accessor :make, :model
  @@all = []
  def initialize(make, model)
    @make = make
    @model = model
    @@all << self
  end

  def self.all
    @@all
  end

  def drive
    puts "VROOOOOOOOOOOOM!"
  end

end

car = Car.new("volvo", "lightening")
car.make
#=> "volvo"
car.model
#=> "ligthening"

car.drive
# => "VROOOOOOOOOOOOM!"

Car.all
#=> [car1, car2, car3]

BONUS:

def initialize(params = {})
  @make = params.fetch(:make, make)
  @model = params.fetch(:model, model)
  @@all << self
end


Car.new(make: "volvo", model: "lightening")

car.make
#=> "volvo"
car.model
#=> "ligthening"
