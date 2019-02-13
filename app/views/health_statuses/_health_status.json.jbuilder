json.extract! health_status, :id, :day_id, :height, :weight, :blood_pressure, :sugar, :waist_line, :created_at, :updated_at
json.url health_status_url(health_status, format: :json)
