class Point < ApplicationRecord
  belongs_to :user, required: false
end
