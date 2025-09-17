require "application_system_test_case"

class BookUsersTest < ApplicationSystemTestCase
  setup do
    @book_user = book_users(:one)
  end

  test "visiting the index" do
    visit book_users_url
    assert_selector "h1", text: "Book Users"
  end

  test "creating a Book user" do
    visit book_users_url
    click_on "New Book User"

    fill_in "Book", with: @book_user.book_id
    fill_in "User", with: @book_user.user_id
    click_on "Create Book user"

    assert_text "Book user was successfully created"
    click_on "Back"
  end

  test "updating a Book user" do
    visit book_users_url
    click_on "Edit", match: :first

    fill_in "Book", with: @book_user.book_id
    fill_in "User", with: @book_user.user_id
    click_on "Update Book user"

    assert_text "Book user was successfully updated"
    click_on "Back"
  end

  test "destroying a Book user" do
    visit book_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Book user was successfully destroyed"
  end
end
