# == Schema Information
#
# Table name: works
#
#  id          :integer          not null, primary key
#  title       :text
#  description :text
#  field       :text
#  hours       :integer
#  tools       :text
#  image       :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Work < ApplicationRecord
belongs_to :user, :optional => true
has_many :favourites
end
