class Education < ApplicationRecord
  belongs_to :user

  validates_presence_of :degree, :from, :until, :institution, :location
end
