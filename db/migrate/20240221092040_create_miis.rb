class CreateMiis < ActiveRecord::Migration[7.1]
  def change
    create_table :miis do |t|
      t.string :name
      t.string :lastname
      t.string :nickname
      t.text :slogan
      t.text :image
      t.integer :age
      t.string :keyword
      t.text :description

      t.timestamps
    end
  end
end
