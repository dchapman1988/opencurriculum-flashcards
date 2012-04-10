if PersistencePrefix == Persistence::ActiveRecord
  class Persistence::ActiveRecord::Card < ActiveRecord::Base
    attr_accessible :name, :front_content, :back_content, :deck_id

    validates_presence_of :name, :front_content, :back_content, :deck_id

    belongs_to :deck
    has_many :answers

    def to_s
      name
    end
  end
end
