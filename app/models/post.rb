class Post < ActiveRecord::Base
  has_many :post_categories 
  has_many :categories,  through: :post_categories
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :categories

  # def categories_attributes=(categories_attributes)
  #   categories_attributes.values.each do |cat_attr|
  #     binding.pry
  #     if category_attributes[:name].present?
  #     category = Category.find_or_create_by(cat_attr)
  #       if !self.categories.include?(category)
  #       self.post_categories.build(:category => category)
  #       end
  #     end
  #   end
  # end


end


# POST         POST_CATEGORIES       CATEGORIES
#  id 1            id:1                  id: 1 
#  id 2           post_id: 1             id: 2
#                 category_id: 1

#                 id: 2
#                 post_id: 1
#                 category_id: 2

#                 id: 3
#                 post_id: 2
#                 category_id: 1