class Animal < ActiveRecord::Base
  belongs_to :zoo, counter_cache: true
  belongs_to :species, counter_cache: true

  validates :name, presence: true
  validates :zoo, presence: true
  validates :species, presence: true

  delegate :name, to: :species, prefix: true
  delegate :name, to: :zoo, prefix: true
end
