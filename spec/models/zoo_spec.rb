require 'rails_helper'

describe Zoo, type: :model do
  it { is_expected.to have_db_column :name }

  describe "validations" do
    it "should be invalid with a blank name" do
      zoo = FactoryGirl.build :zoo, name: ''
      expect(zoo).not_to be_valid
    end
  end
end
