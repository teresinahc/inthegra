module Inthegra

  # Generic error class
  class Error < StandardError; end

  # Invalid serializer input
  class InvalidSerializerInput < Error; end

  # Unauthenticated request
  class Unauthenticated < Error; end

end
