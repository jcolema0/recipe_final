# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  recipes_count   :integer
#  username        :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:my_liked_recipes, { :class_name => "MyLikedRecipe", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:recipes, { :class_name => "Recipe", :foreign_key => "user_id", :dependent => :destroy })
end
