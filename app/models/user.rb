class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  # User와 response는 1:N 
  has_many :responses
  # 특정 유저가 response를 누른 posts를 얻을 수 있음.
  has_many :responsed_posts, through: :responses, source: :post
end
