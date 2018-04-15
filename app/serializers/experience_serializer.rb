class ExperienceSerializer < ActiveModel::Serializer
  has_many :achivements
  attributes :company, :position, :location, :from, :until
end
