module Inthegra
  class BusStop < BaseModel

    # @return [Integer] code of identification
    attr_reader :code

    # @return [String] where the bus stop is
    attr_reader :name

    # @return [String] full address of bus stop
    attr_reader :address

    # @return [String] latitude of the bus stop
    attr_reader :lat

    # @return [String] longitude of the bus stop
    attr_reader :long

    private
    def fill(data)
      @code = data['CodigoParada']
      @name = data['Denomicao']
      @address = data['Endereco']
      @lat = data['Lat']
      @long = data['Long']
    end

  end
end
