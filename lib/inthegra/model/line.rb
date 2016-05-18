module Inthegra
  class Line < BaseModel

    # vehicle code
    attr_reader :code

    # latitude of vehicle
    attr_reader :name

    # longitude of vehicle
    attr_reader :first_stop

    # last update
    attr_reader :last_stop

    # last update
    attr_reader :circular

    private
    def fill(data)
      @code = data["CodigoParada"]
      @name = data["Denomicao"]
      @origin = data["Origem"]
      @return = data["Retorno"]
      @circular = data["Circular"]
    end

  end
end
