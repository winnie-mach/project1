# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  surname         :text
#  role            :text
#  field           :text
#  hobbies         :text
#  phone           :integer
#  email           :text
#  image           :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#

class User < ApplicationRecord
  has_secure_password
  validates :email, :presence => true, :uniqueness => true
  has_many :works
  has_many :favourites
end
