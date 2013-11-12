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

require 'spec_helper'

describe TimeOff do
  pending "add some examples to (or delete) #{__FILE__}"
end
