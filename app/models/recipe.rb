# == Schema Information
#
# Table name: recipes
#
#  id             :integer          not null, primary key
#  body           :text
#  comments_count :integer
#  image          :string
#  title          :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  category_id    :integer
#  user_id        :integer
#
class Recipe < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id", :counter_cache => true })
  belongs_to(:category, { :required => true, :class_name => "Category", :foreign_key => "category_id" })
  has_many(:my_liked_recipes, { :class_name => "MyLikedRecipe", :foreign_key => "recipe_id", :dependent => :destroy })
  has_many(:comments, { :class_name => "Comment", :foreign_key => "recipe_id", :dependent => :destroy })

end
