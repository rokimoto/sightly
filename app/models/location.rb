class Location < ActiveRecord::Base
  has_many :reviews
  has_many :likes, dependent: :destroy
  belongs_to :category

  validates :name, :address, presence: true

  validates :address, format: { with: /\d{5,}/}

  geocoded_by :address

  after_validation :geocode, :if => :address_changed?

  def average_rating
    total = 0
    num_reviews = 0
    self.reviews.each do |review|
      total += review.rating
      num_reviews += 1
    end
    total = total / num_reviews
    total.ceil
  end

end
