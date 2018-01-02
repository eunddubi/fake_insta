class Board < ActiveRecord::Base
  mount_uploader :postimage, PostImageUploader
end
