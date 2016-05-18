module Inthegra
  class BusStop < BaseModel

    # the token hash
    attr_reader :code

    # token expiration date
    attr_reader :name

    # token expiration date
    attr_reader :address

    # token expiration date
    attr_reader :lat

    # token expiration date
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
