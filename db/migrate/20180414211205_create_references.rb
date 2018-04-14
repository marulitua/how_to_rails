class CreateReferences < ActiveRecord::Migration[5.0]
  def change
    create_table :references do |t|
      t.string :name
      t.string :organization
      t.string :location
      t.string :position
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
