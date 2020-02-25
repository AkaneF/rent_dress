class AddUserToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :user, :string
    add_column :reviews, :references, :string
  end
end
