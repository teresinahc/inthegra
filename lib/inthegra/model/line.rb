module Inthegra
  class Line < BaseModel

    # @return [String] code of identification
    attr_reader :code

    # @return [String] line name
    attr_reader :name

    # @return [String] where the line starts
    attr_reader :first_stop

    # @return [String] where the line stops
    attr_reader :last_stop

    # @return [Boolean] if is a circular line
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
