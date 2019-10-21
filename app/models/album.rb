class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks
  scope :search, ->(name) {where("title like ?","%#{name}%") if name.present? }
  validates_presence_of :title, :artist
end
