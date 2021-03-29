json.extract! course, :id, :name, :code, :segment, :segment_id, :description, :created_at, :updated_at
json.url course_url(course, format: :json)
