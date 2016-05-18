module Inthegra
  class CollectionSerializer < BaseSerializer

    # Parse a generic collection with your model type
    # @return [Array] collection items
    def parse
      input.map do |item|
        model.new(item)
      end
    end

  end
end
