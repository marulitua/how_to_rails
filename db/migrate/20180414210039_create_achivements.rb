class CreateAchivements < ActiveRecord::Migration[5.0]
  def change
    create_table :achivements do |t|
      t.string :item
      t.references :experience, foreign_key: true

      t.timestamps
    end
  end
end
