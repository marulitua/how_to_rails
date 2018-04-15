class Reference < ApplicationRecord
  include Contactable

  belongs_to :user

  validates_presence_of :name, :organization, :location, :position
end
