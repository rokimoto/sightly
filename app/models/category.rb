class Category < ActiveRecord::Base
  has_many :locations, dependent: :destroy
end
