module Inthegra
  class Client
    # Define methods related to bus_stops
    module BusStops

      # Return a list of all bus_stops
      #
      # @return [Array::BusStop] All bus stops
      # @example Return all bus stops
      #   Inthegra.bus_stops
      # @authenticated true
      # @see https://inthegra.strans.teresina.pi.gov.br/docs#paradas
      def bus_stops
        response = get('paradas')

        CollectionSerializer.parse(response, BusStop)
      end

      # Return a list of all searched bus stops
      #
      # @param query [String] An search query
      # @return [Array::BusStop] All bus stops returned by search
      # @example Return a list of all bus stops localized in 'ininga' neighborhood
      #   Inthegra.bus_stops_search('ininga')
      # @authenticated true
      # @see https://inthegra.strans.teresina.pi.gov.br/docs#paradas
      def bus_stops_search(query)
        response = get('paradas', { busca: URI::encode(query) })

        CollectionSerializer.parse(response, BusStop)
      end

      # Return all bus stops of the line code passed
      #
      # @param line_code [String] An line code
      # @return [Array::BusStop] All bus stops in the line
      # @example Return a list of all bus stops by the line code passed
      #   Inthegra.line_search('0401')
      # @authenticated true
      # @see https://inthegra.strans.teresina.pi.gov.br/docs#paradas
      def bus_stops_by_line(line_code)
        response = get('paradasLinha', { busca: URI::encode(line_code) })

        CollectionSerializer.parse(response['Paradas'], BusStop)
      end

    end
  end
end
