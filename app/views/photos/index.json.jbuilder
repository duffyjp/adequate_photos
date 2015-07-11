json.array!(@photos) do |photo|
  json.extract! photo, :id, :path_name, :file_name, :md5, :perceptual_hash, :status, :width, :height, :color, :file_created_at
  json.url photo_url(photo, format: :json)
end
