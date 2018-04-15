class Contact < ApplicationRecord
  validates_presence_of :key, :value
  belongs_to :contactable, :polymorphic => true
end
