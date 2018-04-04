# == Schema Information
#
# Table name: favourites
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  work_id    :integer
#

class Favourite < ApplicationRecord
  belongs_to :user, :optional => true
  #belongs_to :user
  #validates_uniqness_of :works_id so user can't add same work several times.
  validates :work_id, :uniqueness => { :scope => :user_id } #it will check the key value pair of user_id and work_id and make sure that it's unique. Meaning the same user can't favourite a work more than once but several users can favourite the same work. 
  belongs_to :work, :optional => true
end
