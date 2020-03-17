# == Schema Information
#
# Table name: art_movements
#
#  id         :integer          not null, primary key
#  genre_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ArtMovement < ApplicationRecord

  has_many :artists, :foreign_key => "genre_id"

  has_many :paintings, :foreign_key => "genre_id"

  has_many :types, :foreign_key => "genre_id"
  
  has_many :themes, :through => :types, :source => :theme

end
