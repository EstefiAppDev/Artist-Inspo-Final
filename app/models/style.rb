# == Schema Information
#
# Table name: styles
#
#  id         :integer          not null, primary key
#  style_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#  theme_id   :integer
#

class Style < ApplicationRecord

  belongs_to :artist, :required => false

  belongs_to :theme, :required => false
  
end
