json.array! @presentations do |json,presentation|
  json.id presentation.id
  json.name presentation.name
  json.type presentation.type
  if presentation.is_a? TextPresentation
    json.text presentation.text
  end
end