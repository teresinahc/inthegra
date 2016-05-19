module Inthegra
  class BaseSerializer

    # Store the input data
    attr_reader :input

    # Store the output data
    attr_reader :output

    # Store the model type
    attr_reader :model

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

    # Decorator method for the class
    # @param input [String] The input data
    # @param model [String] The model type
    def self.parse(input, model)
      @output = new(input, model).parse
    end

    # Implementation of the parser
    def parse
      raise NotImplementedError.new
    end

  end
end
