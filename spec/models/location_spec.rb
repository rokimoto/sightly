require 'rails_helper'

RSpec.describe Location, type: :model do

# Test Cases for the Location Model.

   # 1st Case: Location Responds to name
   it 'responds to a name' do
      location = FactoryGirl.build(:location)
      expect(location).to respond_to(:name)
   end

   it 'is invalid without name' do
      location = FactoryGirl.build(:location_wo_name)
      expect(location).to be_invalid
   end

   it 'is invalid without address' do
      location = FactoryGirl.build(:location_wo_address)
      expect(location).to be_invalid
   end

   it 'is invalid with the wrong address format' do
      location = FactoryGirl.build(:location_wrong_format)
      expect(location).to be_invalid
   end

end
