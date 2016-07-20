# == Schema Information
#
# Table name: visualizations
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Visualization < ApplicationRecord
  validates :name, presence: true
end
