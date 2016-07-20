# == Schema Information
#
# Table name: visualizations
#
#  id            :integer          not null, primary key
#  name          :string           not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  created_by_id :integer
#

class Visualization < ApplicationRecord
  belongs_to :created_by, class_name: 'User'

  validates :name, presence: true
  validates :created_by, presence: true
end
