# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  recipe_id  :integer
#  user_id    :integer
#
class Comment < ApplicationRecord

  belongs_to(:recipe, { :required => true, :class_name => "Recipe", :foreign_key => "recipe_id", :counter_cache => true })
end
