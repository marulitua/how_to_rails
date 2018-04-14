class CreateHonors < ActiveRecord::Migration[5.0]
  def change
    create_table :honors do |t|
      t.string :award
      t.string :event
      t.string :location
      t.integer :year
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
