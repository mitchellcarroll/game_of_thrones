class CreateCharacter < ActiveRecord::Migration[5.0]
  def change
    create_table :characters do |t|
      t.string :name
      t.references :house, null: false, index: true
    end
  end
end
