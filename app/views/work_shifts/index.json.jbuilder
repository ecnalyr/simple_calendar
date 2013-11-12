json.array!(@work_shifts) do |work_shift|
  json.extract! work_shift, :start_of_shift, :end_of_shift, :user_id
  json.url work_shift_url(work_shift, format: :json)
end
