require 'rspec'
require_relative 'car'

describe "Vehicle" do
  it "has to be real" do
    expect{Vehicle.new}.to_not raise_error
  end
end

describe "Car" do
  it "has to be real" do
    expect{Car.new}.to_not raise_error
  end
  it "has wheels" do
      car = Car.new
      expect(car.wheels).to be_a Numeric
  end
  it "can honk horn" do
      car = Car.new
      expect(car.horn).to eq "Beep!"
  end
end

describe "Toyota" do
    it "has to be real" do
        expect{Toyota.new}.to_not raise_error
    end
    it "is a Car" do
        toyota = Toyota.new
        expect(toyota).to be_a Car
    end
    it "can honk horn" do
        toyota = Toyota.new
        expect(toyota.horn).to eq "Whoop!"
    end
    it "has model year" do
        toyota = Toyota.new
        expect(toyota.model_year).to eq 2011
    end
    it "has lights that are on/off" do
        toyota = Toyota.new
        expect(toyota.lights).to be false or be true
    end
    it "can signal" do
        toyota = Toyota.new
        expect(toyota.signal("off")).to eq "off"
        expect(toyota.signal("left")).to eq "left"
        expect(toyota.signal("right")).to eq "right"
    end
    it "can signal validly" do
        toyota = Toyota.new
        expect{toyota.signal("apples")}.to raise_error ArgumentError
    end
end

describe "Tata" do
    it "has to be real" do
        expect{Tata.new}.to_not raise_error
    end
    it "can honk horn" do
        tata = Tata.new
        expect(tata.horn).to eq "beep"
    end
    it "has model year" do
        tata = Tata.new
        expect(tata.model_year).to eq 2011
    end
    it "has lights that are on/off" do
        tata = Tata.new
        expect(tata.lights).to be false or be true
    end
    it "can signal" do
        tata = Tata.new
        expect(tata.signal("off")).to eq "off"
        expect(tata.signal("left")).to eq "left"
        expect(tata.signal("right")).to eq "right"
    end
    it "can signal validly" do
        tata = Tata.new
        expect{tata.signal("apples")}.to raise_error ArgumentError
    end
end

describe "Tesla" do
    it "has to be real" do
        expect{Tesla.new}.to_not raise_error
    end
    it "can honk horn" do
        tesla = Tesla.new
        expect(tesla.horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
    end
    it "has model year" do
        tesla = Tesla.new
        expect(tesla.model_year).to eq 2011
    end
    it "has lights that are on/off" do
        tesla = Tesla.new
        expect(tesla.lights).to be false or be true
    end
    it "can signal" do
        tesla = Tesla.new
        expect(tesla.signal("off")).to eq "off"
        expect(tesla.signal("left")).to eq "left"
        expect(tesla.signal("right")).to eq "right"
    end
    it "can signal validly" do
        tesla = Tesla.new
        expect{tesla.signal("apples")}.to raise_error ArgumentError
    end
    it "can accelerate by an amount" do
        tesla = Tesla.new
        expect(tesla.speed).to be 0
        expect{tesla.tesla_acceleration}.to change {tesla.speed}.from(0).to(0+10)
        expect{tesla.tesla_brake}.to change {tesla.speed}.from(10).to(10-7)
    end
end
