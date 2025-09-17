# db/migrate/20250117000003_add_constraints_to_user_books.rb
class AddConstraintsToUserBooks < ActiveRecord::Migration[6.1]
  def up
    # Running too early in the timeline; table doesn't exist yet in fresh DBs
    return unless table_exists?(:user_books)

    # If somebody already has the table, add constraints if missing
    add_index :user_books, [:user_id, :book_id], unique: true unless index_exists?(:user_books, [:user_id, :book_id])
    add_foreign_key :user_books, :users unless foreign_key_exists?(:user_books, :users)
    add_foreign_key :user_books, :books unless foreign_key_exists?(:user_books, :books)
  end

  def down
    # be conservative
    remove_foreign_key :user_books, :books if foreign_key_exists?(:user_books, :books)
    remove_foreign_key :user_books, :users if foreign_key_exists?(:user_books, :users)
    remove_index :user_books, [:user_id, :book_id] if index_exists?(:user_books, [:user_id, :book_id])
  end
end
