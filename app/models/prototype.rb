class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :captured_images, dependent: :destroy
  has_many :comments
  has_many :likes, dependent: :destroy

  accepts_nested_attributes_for :captured_images

  validates :title,
            :catch_copy,
            :concept,
            presence: true

  def reject_sub_images(attributed)
    attributed['content'].blank?
  end

  def set_main_thumbnail
    if captured_images.present?
      return captured_images.main.first.content
    else
      return "noimage-big.png"
    end
  end

  def posted_date
    created_at.strftime('%b %d %a')
  end

  def like_user(user_id)
   likes.find_by(user_id: user_id)
  end

end
