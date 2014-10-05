class Article < ActiveRecord::Base
  has_and_belongs_to_many :users

  validates :title, presence: true
  validates :body, presence: true

  def update_users(user)
    users << user unless users.include? user
  end
end
