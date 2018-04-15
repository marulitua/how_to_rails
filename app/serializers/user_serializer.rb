class UserSerializer < ActiveModel::Serializer
  has_many :educations
  has_many :experiences
  has_many :contacts
  has_many :references
  has_many :honors
  has_many :skills
  attributes :id, :name, :dob, :position, :enthusiast, :address, :quote, :about

  class ExperienceSerializer < ActiveModel::Serializer
    has_many :achivements
    attributes :company, :position, :location, :from, :until

    class AchivementSerializer < ActiveModel::Serializer
      attributes :item
    end
  end

  class EducationSerializer < ActiveModel::Serializer
    attributes :degree, :institution, :location, :from, :until
  end

  class HonorSerializer < ActiveModel::Serializer
    attributes :award, :event, :location, :year
  end

  class SkillSerializer < ActiveModel::Serializer
    attributes :category, :item
  end

  class ReferenceSerializer < ActiveModel::Serializer
    has_many :contacts
    attributes :name, :organization, :location, :position
  end
end
