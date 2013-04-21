class Citation < ActiveRecord::Base
  attr_accessible :abstract, :authors, :publish_date, :title
  validates :title, presence: true
end
