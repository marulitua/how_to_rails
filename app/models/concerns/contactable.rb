module Contactable
  extend ActiveSupport::Concern

  included do
    has_many :contacts, :as => :contac
  end
end
