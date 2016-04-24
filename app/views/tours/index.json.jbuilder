json.array!(@tours) do |tour|
  json.extract! tour, :id, :Type_of_tour, :Date_of_tour, :Time_of_tour
  json.url tour_url(tour, format: :json)
end
