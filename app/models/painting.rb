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
#  theme_id        :integer
#

class Painting < ApplicationRecord
  validates(:title,
    {
      :presence => true,
      :uniqueness => { :case_sensitive => false }
    }
  )

  belongs_to :artist

  belongs_to :genre, :required => false, :class_name => "ArtMovement"

  belongs_to :fan, :required => false, :class_name => "User"

  belongs_to :theme, :required => false

  def saved
      return Fan.where({ :painting_id => self.id })
  end

  def fans
    array_of_user_ids = self.saved.pluck(:user_id)

    return User.where({ :id => array_of_user_ids })
  end

  def fan_list
    return self.fans.pluck(:username).to_sentence
  end
end 
