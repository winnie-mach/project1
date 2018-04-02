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
  has_and_belongs_to_many :works 
end
