# == Schema Information
#
# Table name: paintings
#
#  id              :integer          not null, primary key
#  additional_info :string
#  currently_at    :string
#  date            :string
#  image           :string
#  paint_medium    :string
#  title           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  artist_id       :integer
#  fan_id          :integer
#  genre_id        :integer
#  style_id        :integer
#

class Painting < ApplicationRecord
  validates(:title,
    {
      :presence => true,
      :uniqueness => { :case_sensitive => false }
    }
  )

  belongs_to :artist

  has_many :messages, :class_name => "MessagesInWork"

  belongs_to :genre, :required => false, :class_name => "ArtMovement"

  belongs_to :fan, :required => false, :class_name => "User"

  has_many :themes, :through => :messages, :source => :theme

  
end
