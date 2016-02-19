require 'rails_helper'

describe Species, type: :model do
  it { should have_db_column :name }
  it { should have_many :animals }

  describe "validations" do
    it "should be invalid with a blank name" do
      species = FactoryGirl.build :species, name: ''
      expect(species).not_to be_valid
    end

    it "must have a unique name" do
      species1 = FactoryGirl.create :species, name: 'Tribble'
      species2 = FactoryGirl.build :species, name: 'Tribble'
      expect(species2).not_to be_valid
    end
  end
end
