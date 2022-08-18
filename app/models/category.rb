# == Schema Information
#
# Table name: categories
#
#  id           :integer          not null, primary key
#  descriptions :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Category < ApplicationRecord

  has_many(:recipes, { :class_name => "Recipe", :foreign_key => "category_id", :dependent => :destroy })
end
