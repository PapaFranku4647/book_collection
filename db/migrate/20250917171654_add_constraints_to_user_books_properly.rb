# db/migrate/2025XXXXXXXXXX_add_constraints_to_user_books_properly.rb
class AddConstraintsToUserBooksProperly < ActiveRecord::Migration[6.1]
  def change
    return unless table_exists?(:user_books)

    add_index :user_books, [:user_id, :book_id], unique: true, name: "index_user_books_on_user_id_and_book_id" unless
      index_exists?(:user_books, [:user_id, :book_id], name: "index_user_books_on_user_id_and_book_id")

    add_foreign_key :user_books, :users unless foreign_key_exists?(:user_books, :users)
    add_foreign_key :user_books, :books unless foreign_key_exists?(:user_books, :books)
  end
end
