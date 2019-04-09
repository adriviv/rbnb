json.projects do
  json.array! @projects do |project|
    json.extract! project, :id, :name, :description, :image, :location, :category, :rewards, :amount_objective, :video
  end
end

