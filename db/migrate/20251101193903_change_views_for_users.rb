class ChangeViewsForUsers < ActiveRecord::Migration[8.1]
  def change
    change_column :users, :views, :integer, default: 0
  end
end
