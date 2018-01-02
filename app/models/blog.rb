class Blog < ActiveRecord::Base
  validates :user, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
