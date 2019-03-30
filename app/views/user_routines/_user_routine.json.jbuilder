json.extract! user_routine, :id, :day_id, :routine_id, :created_at, :updated_at
json.url user_routine_url(user_routine, format: :json)
