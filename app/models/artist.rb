# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  artist_dob  :date
#  artist_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  genre_id    :integer
#

class Artist < ApplicationRecord

  has_many :paintings, :dependent => :destroy 

  has_many :styles

  belongs_to :genre, :required => false, :class_name => "ArtMovement"

  has_many :themes, :through => :styles, :source => :theme

end
