class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :publisher
      t.string :description
      t.date :date_published
      t.decimal :price, precision: 5, scale: 2, default: 0

      t.timestamps
    end
  end
end
