# == Schema Information
#
# Table name: fans
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  painting_id :integer
#  user_id     :integer
#

class Fan < ApplicationRecord

  belongs_to :painting, :required => false
  
  belongs_to :user

  validates(:fan, { :presence => true })

  validates(:painting, { :presence => true })

  def fan
    return User.where({ :id => self.user_id }).at(0)
  end

  belongs_to(:painting, {:class_name => "Painting", :foreign_key => "painting_id"})

  def painting
    return Painting.where({ :id => self.painting_id }).at(0)
  end

end
