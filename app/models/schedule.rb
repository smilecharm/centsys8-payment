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
      data_params_object = Date.parse(value + "-01")
      where(date: data_params_object.beginning_of_month..data_params_object.end_of_month)
    else
      where({})
    end
  }

end
