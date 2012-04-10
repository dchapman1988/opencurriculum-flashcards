class Persistence::MongoidPersistence::Card
  include ::Mongoid::Document
  validates_presence_of :name, :front_content, :back_content, :deck_id

  belongs_to :deck
  has_many :answers, :class_name => "Persistence::MongoidPersistence::Answer"

  field :name, :type => String
  field :front_content, :type => String
  field :back_content, :type => String
  field :deck_id, :type => Integer
  field :created_at, :type => DateTime
  field :updated_at, :type => DateTime
  def to_s
    name
  end
end
