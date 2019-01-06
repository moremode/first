class Point < ApplicationRecord
  belongs_to :user, required: false
  belongs_to :subject, required: false
end
