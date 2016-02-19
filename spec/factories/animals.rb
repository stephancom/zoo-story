FactoryGirl.define do
  factory :animal do
    name "MyString"
    zoo nil
    species nil
    # wow, this is annoying, you don't seem to be able to set these to nil within the rspec tests
    factory :animal_without_zoo do
      zoo nil
    end
    factory :animal_without_species do
      species nil
    end
    factory :animal_without_zoo_or_species do
      zoo nil
      species nil
    end
  end
end
