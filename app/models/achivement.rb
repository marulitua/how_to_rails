class Achivement < ApplicationRecord
  belongs_to :experience

  validates_presence_of :item
end
