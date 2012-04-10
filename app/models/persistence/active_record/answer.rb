class Persistence::ActiveRecord::Answer < ActiveRecord::Base
  attr_accessible :correct, :card

  validates_presence_of :card_id

  belongs_to :card
end
