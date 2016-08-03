# == Schema Information
#
# Table name: visualizations
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  created_by_id :integer
#  data          :text
#  style         :string
#

require 'test_helper'

class VisualizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
