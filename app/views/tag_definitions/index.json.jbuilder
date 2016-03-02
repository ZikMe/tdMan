json.array!(@tag_definitions) do |tag_definition|
  json.extract! tag_definition, :id, :name, :description, :entity_type, :tag_type, :structure, :subjective, :unique, :tag_type_range_id, :tag_target, :virtual, :virtual_target, :dev_status, :dev_pertinence, :td_version_id
  json.url tag_definition_url(tag_definition, format: :json)
end
