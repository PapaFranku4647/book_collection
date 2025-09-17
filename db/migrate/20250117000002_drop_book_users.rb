class DropBookUsers < ActiveRecord::Migration[6.1] # or your version
  def change
    drop_table :book_users, if_exists: true do |t|
      t.bigint "user_id", null: false
      t.bigint "book_id", null: false
      t.datetime "created_at", precision: 6, null: false
      t.datetime "updated_at", precision: 6, null: false
      t.index ["book_id"], name: "index_book_users_on_book_id"
      t.index ["user_id"], name: "index_book_users_on_user_id"
    end
  end
end
