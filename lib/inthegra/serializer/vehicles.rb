require 'pp'
module Inthegra
  class VehiclesSerializer < BaseSerializer

    # Parse a generic collection with your model type
    # @return [Array] collection items
    def parse
      collection = []
      input.each do |line|
        line['Linha']['Veiculos'].each do |vehicles|
          collection << vehicles
        end
      end

      CollectionSerializer.parse(collection, model)
    end

  end
end
