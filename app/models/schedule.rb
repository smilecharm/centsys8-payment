class Schedule < ApplicationRecord
  belongs_to :user

  scope :later_than, lambda { |param_date|
    if param_date.present?
      where("banners.created_at > '#{param_date}'")
    end
  }

  scope :by_name, lambda { |value|
    if value.present?
      # where(counsellor: value)
      where('name like ?',"%#{value}%")
    else
      all
    end
  }

  scope :by_client, lambda { |value|
    if value.present?
      # where(counsellor: value)
      where('client like ?',"%#{value}%")
    else
      all
    end
  }

  scope :by_yearmonth, lambda { |value|
    if value.present?
      # where(counsellor: value)
      where('yearmonth like ?',"%#{value}%")
    else
      all
    end
  }

end
