class Artist < ApplicationRecord
  has_many :albums

  validates_presence_of :name
  scope :search, ->(name) {where("name like ?","%#{name}%") if name.present? }
end
