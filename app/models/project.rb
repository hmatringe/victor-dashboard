class Project < ApplicationRecord
  belongs_to :owner, class_name: "User", foreign_key: "user_id"
  belongs_to :scope
  has_many :updates
  validates :title, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :description, presence: true, length: { minimum: 20 }
  validates :start_date, presence: true
  validates :end_date_forecast, presence: true
end
