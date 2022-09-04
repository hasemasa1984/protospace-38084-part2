class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :prototype
  #has_many :comments


  validates :content, presence: true
end
