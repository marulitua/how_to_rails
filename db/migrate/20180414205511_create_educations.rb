class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :degree
      t.string :institution
      t.string :location
      t.string :from
      t.string :until
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
