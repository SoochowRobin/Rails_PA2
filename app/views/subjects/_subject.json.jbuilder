json.extract! subject, :id, :subjectId, :subjectName, :segmentId, :segmentName, :created_at, :updated_at
json.url subject_url(subject, format: :json)
