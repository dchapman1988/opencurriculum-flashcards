if PersistencePrefix == Persistence::ActiveRecord
  class Persistence::ActiveRecord::Deck < ActiveRecord::Base
    attr_accessible :name

    validates_presence_of :name

    has_many :cards

    def to_s
      name
    end
  end
end
