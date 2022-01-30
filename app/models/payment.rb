class Payment < ApplicationRecord

  scope :by_client, lambda { |value|
    if value.present?
      # where(counsellor: value)
      where('client like ?',"%#{value}%")
    else
      all
    end
  }

end
