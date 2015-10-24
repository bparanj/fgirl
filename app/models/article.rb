class Article < ActiveRecord::Base
  has_many :comments
  has_one :author
end
