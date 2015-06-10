FactoryGirl.define do

   #first location factory
   factory :location, class: Location do
      name "neighbors"
      address "370 Warner Hill Rd Southport, CT 06890"
   end

   factory :location_wo_name, class: Location do
      address "370 Warner Hill Rd Southport, CT 06890"
   end

   factory :location_wo_address, class: Location do
      name "neighbors"
   end

   factory :location_wrong_format, class: Location do
      name "wrong_format"
      address "370 Warner Hill Rd Southport, CT 090"
   end
end
