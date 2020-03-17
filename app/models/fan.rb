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
  
end
