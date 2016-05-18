module Inthegra
  class Vehicles < BaseModel

    # vehicle code
    attr_reader :code

    # latitude of vehicle
    attr_reader :lat

    # longitude of vehicle
    attr_reader :long

    # last update
    attr_reader :hour

    private
    def fill
      @code = data["CodigoVeiculo"]
      @lat = data["Lat"]
      @long = data["Long"]
      @hour = Time.parse(data["Hora"])
    end

  end
end
