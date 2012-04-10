require 'mongoid'
class Persistence::MongoidPersistence::Answer
  include ::Mongoid::Document
  validates_presence_of :card_id

  belongs_to :card, :class_name => "Persistence::MongoidPersistence::Card"
  field :card_id, :type => Integer
  field :correct, :type => Boolean
  field :created_at, :type => DateTime
  field :updated_at, :type => DateTime
end
