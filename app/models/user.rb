# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }

  validates :email, :presence => true

  has_secure_password

  has_many :paintings, :foreign_key => "fan_id", :dependent => :nullify

  def saves
    return Fan.where({ :user_id => self.id })
  end

  def saved_paintings
    array_of_painting_ids = self.saves.pluck(:painting_id)

    return Painting.where({ :id => array_of_painting_ids })
  end
  
end

