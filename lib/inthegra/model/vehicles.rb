module Inthegra
  class Vehicles < BaseModel

    # @return [Integer] code of identification
    attr_reader :code

    # @return [String] current vehicle latitude
    attr_reader :lat

    # @return [String] current vehicle longitude
    attr_reader :long

    # @return [Time] last data update
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
