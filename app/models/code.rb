class Code < ApplicationRecord
  validates :zip_code, presence: true
  validates :locality, presence: true
  validates :federal_entity, presence: true
  validates :settlements, presence: true
  validates :municipality, presence: true

  serialize :settlements, Array
end
