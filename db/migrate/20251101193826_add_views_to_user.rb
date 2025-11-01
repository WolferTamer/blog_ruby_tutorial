class AddViewsToUser < ActiveRecord::Migration[8.1]
  def change
    add_column :users, :views, :integer
  end
end
