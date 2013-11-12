json.array!(@time_offs) do |time_off|
  json.extract! time_off, :start_date, :end_date, :reason, :user_id
  json.url time_off_url(time_off, format: :json)
end
