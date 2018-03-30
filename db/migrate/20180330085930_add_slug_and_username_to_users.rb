class AddSlugAndUsernameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :slug, :string
    add_column :users, :username, :string
  end
end
