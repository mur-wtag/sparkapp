class CreateSharks < ActiveRecord::Migration[6.0]
  def change
    create_table :sharks do |t|
      t.string :name, null: false
      t.text :facts
      t.timestamps
    end
  end
end
