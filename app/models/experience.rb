class Experience < ApplicationRecord
  belongs_to :user
  has_many :achivements, dependent: :destroy

  accepts_nested_attributes_for :achivements

  validates_presence_of :company, :position, :from, :until, :location
end
