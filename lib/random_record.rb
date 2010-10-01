module ActiveRecord
  class Base
    def self.random(conditions = nil)
      c = count(:conditions=>conditions)
      unless c == 0
        first(:conditions=>conditions, :offset =>rand(c))
      end
    end
  end
end