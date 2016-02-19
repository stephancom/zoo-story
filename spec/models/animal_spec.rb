require 'rails_helper'

describe Animal, type: :model do
  it { is_expected.to have_db_column :name }
  it { should belong_to :zoo }
  it { should belong_to :species }

  describe "validations" do
    it "should be invalid with a blank name" do
      animal = FactoryGirl.build :animal, name: ''
      expect(animal).not_to be_valid
    end

    it "should be invalid with no zoo" do
      animal = FactoryGirl.build :animal_without_zoo
      expect(animal).not_to be_valid
    end

    it "should be invalid with no species" do
      animal = FactoryGirl.build :animal_without_species
      expect(animal).not_to be_valid
    end

    it "should be invalid with neither zoo nor species" do
      animal = FactoryGirl.build :animal_without_zoo_or_species
      expect(animal).not_to be_valid
    end
  end

  describe "delegated names" do
    let(:zoo) { FactoryGirl.create :zoo, name: "Quahog Zoo" }
    let(:species) { FactoryGirl.create :species, name: "Labrador" }
    let(:animal) { FactoryGirl.create :animal, name: "Brian", zoo: zoo, species: species }

    it "should return zoo_name" do
      expect(animal.zoo_name).to eq("Quahog Zoo")
    end
    it "should return species_name" do
      expect(animal.species_name).to eq("Labrador")
    end
  end
end
