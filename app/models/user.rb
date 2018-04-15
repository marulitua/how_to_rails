class User < ApplicationRecord
  include Contactable

  has_many :experiences, dependent: :destroy
  has_many :references, dependent: :destroy
  has_many :honors, dependent: :destroy
  has_many :educations, dependent: :destroy
  has_many :skills, dependent: :destroy

  accepts_nested_attributes_for :contacts

  validates_presence_of :name, :address, :dob, :position
end
