module Inthegra
  class Client
    module Lines

      # GET /lines
      # Get all lines filling it to a model
      # and returning a array
      # @return [Array] Array of Line objects
      def lines
        response = get('linhas')

        CollectionSerializer.parse(response, Line)
      end

      # GET /lines?busca=query
      # Search lines by the query passed
      # @param [String] search query
      # @return [Array] Array of Line objects
      def line_search(query)
        response = get('linhas', { busca: URI::encode(query) })

        CollectionSerializer.parse(response, Line)
      end

    end
  end
end
