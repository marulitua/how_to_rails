class Experience < ApplicationRecord
  belongs_to :user
  has_many :achivements, dependent: :destroy

  validates_presence_of :company, :position, :from, :until, :location
end
