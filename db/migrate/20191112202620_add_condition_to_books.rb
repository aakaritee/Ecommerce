class AddConditionToBooks < ActiveRecord::Migration[5.2]
  def change
    add_column :books, :condition, :string
  end
end