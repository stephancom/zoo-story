FactoryGirl.define do
  factory :species do
    sequence :name do |n|
      "Homo Sapiens Sapiens #{n}"
    end
  end
end
