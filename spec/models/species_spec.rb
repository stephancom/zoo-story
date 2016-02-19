require 'rails_helper'

describe Species, type: :model do
  it { is_expected.to have_db_column :name }

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
