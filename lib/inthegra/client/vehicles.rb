module Inthegra
  class Client
    # Define methods related to vehicles
    module Vehicles

      # Return a list of all vehicles
      #
      # @return [Array::Vehicle] All vehicles
      # @example Return all vehicles
      #   Inthegra.vehicles
      # @authenticated true
      # @see https://inthegra.strans.teresina.pi.gov.br/docs#veiculos
      def vehicles
        response = get('veiculos')

        VehiclesSerializer.parse(response, Vehicle)
      end

      # Return a list of all vehicles of from a line code
      #
      # @param query [String] An search query
      # @return [Array::Vehicle] All lines
      # @example Return a list of all vehicles of from a line code 401
      #   Inthegra.line_search('0401')
      # @authenticated true
      # @see https://inthegra.strans.teresina.pi.gov.br/docs#veiculos
      def vehicles_by_line(line_code)
        response = get('veiculosLinha', { busca: URI::encode(line_code) })

        VehiclesSerializer.parse([response], Vehicle)
      end

    end
  end
end
