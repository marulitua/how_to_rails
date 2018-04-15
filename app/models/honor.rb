class Honor < ApplicationRecord
  belongs_to :user

  validates_presence_of :award, :event, :location, :year
end
