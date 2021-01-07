json.extract! member, :id, :first_name, :last_name, :email, :phone, :skill, :created_at, :updated_at
json.url member_url(member, format: :json)
