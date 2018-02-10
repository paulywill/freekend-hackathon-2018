class Packjob < ApplicationRecord
  validates :packer, presence: true
  validates :rig, presence: true

end
