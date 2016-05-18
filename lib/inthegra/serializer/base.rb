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
    def initialize(input, model)
      unless input.is_a?(Array)
        raise InvalidSerializerInput.new
      end

      @model = model
      @input = input
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
