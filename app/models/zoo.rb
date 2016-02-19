class Zoo < ActiveRecord::Base
  validates :name, presence: true

  # really, we should force animals to be reassigned to another zoo.  dependent: :destroy is cruel.
  has_many :animals, dependent: :destroy
  
  # the little-known "distinct" option
  # http://guides.rubyonrails.org/association_basics.html#distinct
  has_many :species, -> { distinct }, through: :animals

  delegate :count, to: :species, prefix: true  
end
