module Inthegra
  class Client
    # Define methods related to lines
    module Lines

      # Return a list of all lines
      #
      # @return [Array::Line] All lines
      # @authenticated true
      # @see https://inthegra.strans.teresina.pi.gov.br/docs#linhas
      def lines
        response = get('linhas')

        CollectionSerializer.parse(response, Line)
      end

      # Return a list of all searched lines
      #
      # @param query [String] An search query
      # @return [Array::Line] All lines
      # @authenticated true
      # @see https://inthegra.strans.teresina.pi.gov.br/docs#linhas
      def line_search(query)
        response = get('linhas', { busca: URI::encode(query) })

        CollectionSerializer.parse(response, Line)
      end

    end
  end
end
