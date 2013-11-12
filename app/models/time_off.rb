# == Schema Information
#
# Table name: time_offs
#
#  id         :integer          not null, primary key
#  start_date :date
#  end_date   :date
#  reason     :string(255)
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class TimeOff < ActiveRecord::Base
  belongs_to :user
end
