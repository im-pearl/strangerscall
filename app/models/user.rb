class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  has_many :responses
  has_many :responsed_posts, through: :responses, source: :post
  
  def is_responsed?(post)
    Response.find_by(post_id: post.id).present?
  end
end
