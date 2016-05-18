module Inthegra
  class BaseModel

    def initialize(data)
      fill(data)
    end

    private
    def fill(data)
      raise NotImplementedError.new
    end

  end
end
