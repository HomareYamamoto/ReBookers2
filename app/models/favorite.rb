class Favorite < ApplicationRecord
  belongs_to :book
  belongs_to :user

  #一人のユーザーは一つの投稿に対して1度しかいいね出来ない。
  validates :user_id, uniqueness: {scope: :book_id}

end
