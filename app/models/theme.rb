# == Schema Information
#
# Table name: themes
#
#  id          :integer          not null, primary key
#  description :string
#  theme_name  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Theme < ApplicationRecord

  has_many :styles

  has_many :messages, :class_name => "MessagesInWork"

  has_many :types

  has_many :artists, :through => :styles, :source => :artist

  has_many :paintings, :through => :messages, :source => :painting
  
  has_many :genres, :through => :types, :source => :genre 
end
