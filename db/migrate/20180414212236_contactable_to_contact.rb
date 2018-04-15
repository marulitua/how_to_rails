class ContactableToContact < ActiveRecord::Migration[5.0]
  def change
    add_reference :contacts, :contactable, polymorphic: true, index: true
  end
end
