json.array!(@letter_grades) do |letter_grade|
  json.extract! letter_grade, :grade, :min_points, :max_points
  json.url letter_grade_url(letter_grade, format: :json)
end
