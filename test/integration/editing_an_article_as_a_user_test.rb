require "test_helper"

class EditingAnArticleAsAUserTest < Capybara::Rails::TestCase
  before do
    @user = :derek
    log_in(@user)
  end

  def test_creating_an_article_adds_the_article_to_the_user_page
    create_article

    visit user_path(users(@user))
    assert page.has_content? 'Star Wars'
  end

  def test_creating_an_article_adds_the_user_to_the_article_page
    create_article

    visit articles_path
    page.find('tr', text: 'Star Wars').click_on 'Show'
    assert page.has_content? "#{users(@user).email}"
  end

  def test_editing_an_article_adds_the_article_to_the_user_page
    edit_article

    visit user_path(users(@user))
    assert page.has_content? 'Balboa'
  end

  def test_editing_an_article_adds_the_user_to_the_article_page
    edit_article

    visit article_path(articles(:balboa))
    assert page.has_content? "#{users(@user).email}"
  end

  def test_editing_twice_does_not_add_the_article_twice
    edit_article
    edit_article

    visit user_path(users(@user))
    refute page.has_content? 'Balboa', count: 2
  end

  def test_editing_twice_does_not_add_the_user_twice
    edit_article
    edit_article

    visit article_path(articles(:balboa))
    refute page.has_content? "#{users(@user).email}", count: 2

  end

  private

  def create_article
    visit new_article_path
    fill_in 'Title', with: 'Star Wars'
    fill_in 'Body', with: 'Star Wars is an amazing series'
    click_on 'Create Article'
  end

  def edit_article
    visit edit_article_path(articles(:balboa))
    fill_in 'Title', with: 'Balboa'
    fill_in 'Body', with: 'Balboa is actually way better than Lindy Hop'
    click_on 'Update Article'
  end
end
