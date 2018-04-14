class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :company
      t.string :position
      t.string :location
      t.string :from
      t.string :until
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
