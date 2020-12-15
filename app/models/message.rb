class Message < ApplicationRecord
  belongs_to :room
  belongs_to :user
  has_one_attached :image

  # validates :content, presence: true
  validates :content, presence: true, unless: :was_attached? #コメント無し、画像ありで投稿可能にする

  def was_attached?
    self.image.attached?
  end
end
