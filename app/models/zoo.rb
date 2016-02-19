class Zoo < ActiveRecord::Base
  validates :name, presence: true
end
