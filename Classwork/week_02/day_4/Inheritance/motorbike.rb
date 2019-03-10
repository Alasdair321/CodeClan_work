require_relative('./motor_vehicle.rb')

class Motorbike < MotorVehicle
  def initialize
    super(2)
  end 

  def start_engine
    "Vrrmmm, I'm a motorbike, HELL YEAH"
  end
end
