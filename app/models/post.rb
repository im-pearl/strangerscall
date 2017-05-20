class Post < ActiveRecord::Base
  belongs_to :user
  has_one :response
  has_one :responsed_user, through: :response, source: :user
end
