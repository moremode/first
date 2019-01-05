class User < ApplicationRecord
  belongs_to :level, required: false
end
