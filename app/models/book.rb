class Book < ApplicationRecord
  belongs_to :user
  
  #コメント機能の
  has_many :book_comments, dependent: :destroy
  
  #いいね機能の追加
  has_many :favorites, dependent: :destroy


  validates :title,presence:true
  validates :body,presence:true,length:{maximum:200}


  def favorited_by?(user)
    favorites.exists?(user_id: user.id)
  end

end
