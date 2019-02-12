json.extract! user, :id, :name, :email, :address, :birthday, :contact_no, :gender, :created_at, :updated_at
json.url user_url(user, format: :json)
