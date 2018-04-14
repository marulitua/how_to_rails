class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.date :dob
      t.string :position
      t.string :enthusiast
      t.string :address
      t.string :quote
      t.string :about

      t.timestamps
    end
  end
end
