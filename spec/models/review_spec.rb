require 'rails_helper'

RSpec.describe Review, type: :model do

  it "Has content" do
    review = FactoryGirl.build(:review)
    expect(review.content).to eq("This is content")
  end

  it "Has no content" do
    review = FactoryGirl.build(:review2)
    expect(review.content).to eq("")
  end

  it "Invalid with content = empty string" do
    review = FactoryGirl.build(:review3)
    expect(review).to be_invalid
  end

  it "Invalid without rating" do
    review = FactoryGirl.build(:review4)
    expect(review).to be_invalid
  end

  it "Is valid with rating" do
    review = FactoryGirl.build(:review5)
    expect(review).to be_valid
  end

  it "Has User Name" do
    review = FactoryGirl.build(:review6)
    expect(review.user_name).to eq("Dustin Baker")
  end

  it "Has no user name" do
    review = FactoryGirl.build(:review7)
    expect(review.user_name).to eq("")
  end



end