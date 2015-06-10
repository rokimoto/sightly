FactoryGirl.define do

   #First User Factory
   factory :user_with_name, class: User do
      username "martin1234"
      email "martin1234@pendulum.com"
      name 'martin'
      password 'jackson_browning'
   end

   factory :user_without_username, class: User do
      email 'darnel@morgoth.net'
      name 'jerry darnel'
      password 'jackson_browning'
   end

   factory :user_without_password, class: User do
      username "max123"
      email "max123@perpendicular.com"
      name 'maxwell'
   end

   factory :user_short_pass, class: User do
      username "jeryl2222"
      email "jeryl@jeryl.com"
      name "jjcool_l"
      password 'misterT'
   end

   factory :user_10char_pass, class: User do
      username "jeryl2222"
      email "jeryl@jeryl.com"
      name "jjcool_l"
      password 'misterT224'
   end

   factory :user_pass_nonum, class: User do
      username "jeryl2222"
      email "jeryl@jeryl.com"
      name "jjcool_l"
      password 'misterTTTP'
   end

   factory :user_wrong_email, class: User do
      username "jeryl2222"
      email "jeryljeryl.com"
      name "jjcool_l"
      password 'misterT224'
   end

end
