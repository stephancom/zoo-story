class Species < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true

  # really, we should force animals to be reassigned to another zoo.  dependent: :destroy is cruel.
  has_many :animals, dependent: :destroy
end
