# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# Create sample users
user1 = User.create!(username: 'john_doe')
user2 = User.create!(username: 'jane_smith')
user3 = User.create!(username: 'bob_wilson')

# Create sample books
Book.create!(title: 'The Great Gatsby')
Book.create!(title: 'To Kill a Mockingbird')
Book.create!(title: '1984')
Book.create!(title: 'Pride and Prejudice')
Book.create!(title: 'MY NEW BOOK')


# Create sample user-book associations
UserBook.create!(user: user1, book: book1)
UserBook.create!(user: user1, book: book3)
UserBook.create!(user: user2, book: book2)
UserBook.create!(user: user2, book: book4)
UserBook.create!(user: user3, book: book1)
UserBook.create!(user: user3, book: book2)
