class Hat < ActiveRecord::Base
  mount_uploader :attachment, AttachmentUploader # tells rails to use this uploader for this model
  validates :name, presence: true # makes sure the owner's name is present
end
