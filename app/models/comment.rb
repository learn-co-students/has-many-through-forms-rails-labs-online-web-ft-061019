class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  accepts_nested_attributes_for :user, reject_if: :all_blank?

  def comment_user_attributes_username=(username)
    binding.pry
    if self.user_id == ""  
      @user = User.create(username)
      self.user_id = @user.id
      self.save
    end
  end

  # def comment_user_attributes_username
  #   User.find_by_id(self.id)
  # end

end
