# == Schema Information
#
# Table name: types
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  genre_id   :integer
#  theme_id   :integer
#

class Type < ApplicationRecord

  belongs_to :theme

  belongs_to :genre, :class_name => "ArtMovement"
  
end
