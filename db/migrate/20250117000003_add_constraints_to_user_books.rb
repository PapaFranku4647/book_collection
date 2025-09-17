class AddConstraintsToUserBooks < ActiveRecord::Migration[6.1]
  def change
    add_index :user_books, [:user_id, :book_id], unique: true
    add_foreign_key :user_books, :users
    add_foreign_key :user_books, :books
  end
end
