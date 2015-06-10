class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :location

  # validates :name, uniqueness: { scope: :year, message: "should happen once per year" }
  validates :location_id, uniqueness: { scope: :user_id, message: " has already been saved" }

  validates :user_id, :location_id, presence: true

end
