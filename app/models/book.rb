class Book < ActiveRecord::Base

  belongs_to :user
  has_many :chats
  has_many :user_books
  has_many :users, through: :user_books

  validates :title, uniqueness: true

end
