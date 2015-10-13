class Lesson < ActiveRecord::Base
  validates :title, :presence => true

end

def previous
  # Lesson.where(["number < ?", number]).last
  self.class.first(:conditions => ["number < ?", number], :order => "number desc")
end

def next
  # Lesson.where(["number < ?", number]).next
  self.class.first(:conditions => ["title > ?", title], :order => "title asc")
end
