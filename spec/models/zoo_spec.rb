require 'rails_helper'

describe Zoo, type: :model do
  it { should have_db_column :name }
  it { should have_many :animals }
  it { should have_many :species }
  it { should have_many(:species).through(:animals) }

  describe "validations" do
    it "should be invalid with a blank name" do
      zoo = FactoryGirl.build :zoo, name: ''
      expect(zoo).not_to be_valid
    end
  end

  # from the spec:
  # "If the Clackamas County Zoo has a monkey named Alice, a monkey named Bob, and an elephant named Zeus, then its number of species is 2."
  describe "for a zoo with animals" do
    let(:zoo) { FactoryGirl.create :zoo, name: "Clackmas County" }
    let(:monkey) { FactoryGirl.create :species, name: "Monkey" }
    let(:elephant) { FactoryGirl.create :species, name: "Elephant" }
    before(:each) do
      zoo.animals.create name: "Alice", species: monkey
      zoo.animals.create name: "Bob", species: monkey
      zoo.animals.create name: "Zeus", species: elephant      
    end

    it "should count unique species" do
      expect(zoo.species_count).to eq(2)
    end

    it "should count animals" do
      expect(zoo.animals.count).to eq(3)
    end
  end
end
