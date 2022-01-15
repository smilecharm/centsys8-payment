class Client < ApplicationRecord
  
  scope :by_name, lambda { |value|
    if value.present?
      # where(counsellor: value)
      where('name like ?',"%#{value}%")
    else
      all
    end
  }

  scope :by_needs, lambda { |value|
    if value.present?
      # where(counsellor: value)
      where('needs like ?',"%#{value}%")
    else
      all
    end
  }

end
