class Section <ActiveRecord::Base
  has_many :lessons
  validates :description, :presence => true
end
