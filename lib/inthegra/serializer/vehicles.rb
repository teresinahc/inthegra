module Inthegra
  class VehiclesSerializer < BaseSerializer

    # Parse a generic collection with your model type
    # @return [Array] collection items
    def parse
      collection = []

      input.each do |line|
        line['Linha']['Veiculos'].each do |vehicle|
          vehicle['CodigoLinha'] = line['Linha']['CodigoLinha']

          collection << vehicle
        end
      end

      CollectionSerializer.parse(collection, model)
    end

  end
end
