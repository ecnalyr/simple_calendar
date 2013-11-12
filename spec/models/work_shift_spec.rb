# == Schema Information
#
# Table name: work_shifts
#
#  id             :integer          not null, primary key
#  start_of_shift :datetime
#  end_of_shift   :datetime
#  user_id        :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe WorkShift do
  pending "add some examples to (or delete) #{__FILE__}"
end
