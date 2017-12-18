class Participant < ApplicationRecord
  belongs_to :scope
  belongs_to :user
end
