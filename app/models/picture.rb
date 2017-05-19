class Picture < ActiveRecord::Base
  # validates :avatar, presence: true
    validates :title, :content, :avatar, presence:true
  mount_uploader :avatar, AvatarUploader
   belongs_to :user
   def own?(user)
     self.user.id == user.id
   end
end
