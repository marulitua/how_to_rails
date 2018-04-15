class Skill < ApplicationRecord
  belongs_to :user, dependent: :destroy
  validates_presence_of :category, :item
end
