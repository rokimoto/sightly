FactoryGirl.define do
  # First User Factory
  factory :review, class: Review do
    content "This is content"
    rating 5
  end

  factory :review2, class: Review do
    content ""
    rating 0
  end

  factory :review3, class: Review do
    rating 3
  end

  factory :review4, class: Review do
    content "blah"
  end

  factory :review5, class: Review do
    content "blah"
    rating 5
  end

  factory :review6, class: Review do
    content "blah"
    rating 5
    user_name "Dustin Baker"
  end

  factory :review7, class: Review do
    content "blah"
    rating 5
    user_name ""
  end






end