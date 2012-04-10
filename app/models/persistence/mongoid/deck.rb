class Persistence::MongoidPersistence::Deck
  include ::Mongoid::Document
  validates_presence_of :name

  has_many :cards, :class_name => "Persistence::MongoidPersistence::Card"
  field :name, :type => String
  field :created_at, :type => DateTime
  field :updated_at, :type => DateTime

  def to_s
    name
  end
end
