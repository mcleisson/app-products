class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :value
      t.decimal :value_promotion
      t.boolean :status
      t.references :category, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
