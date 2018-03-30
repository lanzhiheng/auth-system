class AddSlugToUser < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :slug, :string
  end

  def down
    remove_column :users, :slug, :string
  end
end
