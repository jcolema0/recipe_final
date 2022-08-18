# == Schema Information
#
# Table name: my_liked_recipes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer
#  user_id    :integer
#
class MyLikedRecipe < ApplicationRecord

  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
  belongs_to(:recipe, { :required => true, :class_name => "Recipe", :foreign_key => "recipe_id" })
end
