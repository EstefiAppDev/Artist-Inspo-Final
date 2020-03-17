# == Schema Information
#
# Table name: messages_in_works
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  painting_id :integer
#  theme_id    :integer
#

class MessagesInWork < ApplicationRecord

  belongs_to :painting

  belongs_to :theme
  
end
