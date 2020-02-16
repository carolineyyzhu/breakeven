class Payment < ApplicationRecord
  belongs_to :person, dependent :destroy
end
