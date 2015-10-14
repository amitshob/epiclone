class Lesson < ActiveRecord::Base
  belongs_to :section
  validates :title, :presence => true

  def next
    if self.number >= Lesson.last.number
      return self
    else
      return Lesson.where("number > (?)", self.number).first
    end

  end

  def previous
    if self.number <= Lesson.last.number
      return self
    else
      return Lesson.where("number < (?)", self.number).last
    end
  end
end
