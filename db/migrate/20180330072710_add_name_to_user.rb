class AddNameToUser < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :name, :string
  end

  def down
    remove_column :users, :name, :string
  end
end
