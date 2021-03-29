json.extract! instructor, :id, :instructorId, :firstName, :middleName, :lastName, :email, :created_at, :updated_at
json.url instructor_url(instructor, format: :json)
