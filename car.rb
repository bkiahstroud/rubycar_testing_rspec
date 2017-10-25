class Vehicle

end

class Car
    attr_accessor :wheels, :horn, :lights, :signal, :speed, :model_year, :model
    def initialize(wheels=4, horn="Beep!", year=2011, lights=false, signal="off", speed=0)
        @wheels = wheels
        @horn = horn
        @model_year = year
        @lights = lights
        @signal = signal
        @speed = speed
    end
    def switchLights
        @lights = !(@lights)
    end
    def signal(input)
        puts "Please signal left or right"
        if input != "off" && input != "right" && input != "left"
            raise ArgumentError, 'Argument is not valid'
            puts "Please enter a valid direction"
        else
            @signal = input
        end
        p @signal
    end
    def to_string
        p "The car has #{@wheels} wheels. The car's horn makes a #{@horn} noise. The car's model year is #{@model_year}. The car's lights being on is #{@lights}. The car's signal is #{@signal}. The car's speed is #{@speed}."
    end
end

class Toyota < Car
    def horn(horn="Whoop!")
        @horn = horn
    end
    def model_year
        @model_year = 2000
    end
    def model
        @model = "toyota"
    end
end

class Tata < Car
    def horn(horn="beep")
        @horn = horn
    end
    def model_year
        @model_year = 1995
    end
        def model
            @model = "tata"
        end
end

class Tesla < Car
    def horn(horn="Beep-bee-bee-boop-bee-doo-weep")
        @horn = horn
    end
    def tesla_acceleration
        @speed += 10
    end
    def tesla_brake
        @speed -= 7
    end
    def model_year
        @model_year = 2013
    end
        def model
            @model = "tesla"
        end
end
toyota = Toyota.new
tata = Tata.new
tesla = Tesla.new

# tesla.horn
# tesla.switchLights
# tesla.signal("left")
# tesla.tesla_acceleration
# tesla.tesla_brake
# tesla.to_string

garage = []

garage << toyota
garage << tesla
garage << tata
p garage.sort_by{|object| [object.model, object.model_year]}
