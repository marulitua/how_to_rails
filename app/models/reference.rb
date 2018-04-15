class Reference < ApplicationRecord
  include Contactable

  belongs_to :user

  accepts_nested_attributes_for :contacts

  validates_presence_of :name, :organization, :location, :position
end
