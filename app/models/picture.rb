class Picture < ActiveRecord::Base
  # validates :avatar, presence: true
  mount_uploader :avatar, AvatarUploader
   belongs_to :user
end
