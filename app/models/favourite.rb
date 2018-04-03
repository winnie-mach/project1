# == Schema Information
#
# Table name: favourites
#
#  id         :integer          not null, primary key
#  title      :text
#  creater    :text
#  image      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Favourite < ApplicationRecord
  belongs_to :user, :optional => true
  #belongs_to :user
  #validates_uniqness_of :works_id so user can't add same work several times. 
  has_and_belongs_to_many :works
end
