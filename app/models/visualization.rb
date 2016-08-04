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

class Visualization < ApplicationRecord
  belongs_to :created_by, class_name: 'User'

  STYLES = %w(line bar horizontalBar radar polarArea pie bubble)

  validates :name, presence: true
  validates :created_by, presence: true
  validates :data, presence: true
  validates :style, presence: true, inclusion: { in: STYLES, message: "%{value} is not a valid style" }

  # before_validation :set_style_as_sym

  # printable? embeddable? exportable?
  # data as file
  # check data format

  def style=(new_style)
    super new_style.to_s
  end
end
