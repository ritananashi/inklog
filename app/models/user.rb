class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :reviews, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_reviews, through: :bookmarks, source: :review
  has_one_attached :avatar

  validates :name, presence: true, uniqueness: true, length: { maximum: 10 }
  validates :account, presence: true, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\z/ }, length: { minimum: 4, maximum: 20 }
  validates :body, length: { maximum: 500 }
  validates :avatar, size: { less_than: 1.megabytes, },
                      content_type: { in: ['image/png', 'image/jpeg', 'image/webp'], spoofing_protection: true }
  validates :x_account, format: { with: /\Ahttps?:\/\/x.com\/[^\n]+\z/ , message: "のURLを入力してください" }, allow_blank: true
  validates :instagram_account, format: { with: /\Ahttps?:\/\/www.instagram.com\/[^\n]+\z/ , message: "のURLを入力してください" }, allow_blank: true
  validates :youtube_account, format: { with: /\Ahttps?:\/\/youtube.com\/[^\n]+\z/ , message: "のURLを入力してください" }, allow_blank: true

  def to_param
    account
  end

  def bookmark(review)
    bookmark_reviews << review
  end

  def unbookmark(review)
    bookmark_reviews.destroy(review)
  end

  def bookmarked_by?(review)
    bookmark_reviews.include?(review)
  end
end
