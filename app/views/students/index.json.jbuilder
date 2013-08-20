json.array!(@students) do |student|
  json.extract! student, :last_name, :first_name, :id_num
  json.url student_url(student, format: :json)
end
