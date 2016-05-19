module Inthegra
  # Generic serialize class
  class BaseSerializer

    # @return [Array:Hash] the input data
    attr_reader :input

    # @return [Array:BaseModel] the output data
    attr_reader :output

    # @return [BaseModel] the model of collection
    attr_reader :model

    # Initialize the serializer passing a input data and a model
    #
    # @param input [String] The input data
    # @param model [String] The resource model
    def initialize(data, model)
      data ||= []

      unless data.is_a?(Array)
        raise InvalidSerializerInput, "The data is a #{data.class} and not a Array type"
      end

      @model = model
      @input = data
    end

    # Decorator method for the serializer
    #
    # @param input [String] The input data
    # @param model [String] the model of collection
    # @example  Parse a line response
    #   Inthegra::CollectionSerializer(response, Inthegra::Line)
    def self.parse(input, model)
      @output = new(input, model).parse
    end

    # Implementation of the parser
    def parse
      raise NotImplementedError.new
    end

  end
end
