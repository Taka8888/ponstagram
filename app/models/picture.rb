class Picture < ActiveRecord::Base
  # validates :avatar, presence: true
  validates :title, :avatar, :content, presence:true
  validates :title, length: { maximum: 100 }
  validates :content, length: { maximum: 500 }
  mount_uploader :avatar, AvatarUploader
   belongs_to :user
   def own?(user)
     self.user.id == user.id
   end
end
