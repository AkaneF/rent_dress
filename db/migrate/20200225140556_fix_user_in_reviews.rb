class FixUserInReviews < ActiveRecord::Migration[6.0]
  def change
    remove_column :reviews, :user, :string
    remove_column :reviews, :references, :string
    add_reference :reviews, :user, foreign_key: true
  end
end
