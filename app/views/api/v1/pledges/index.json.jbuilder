json.pledges do
  json.array! @pledges do |pledge|
    json.extract! pledge, :amount
  end
end

json.total @total
