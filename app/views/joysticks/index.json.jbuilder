json.array!(@joysticks) do |joystick|
  json.extract! joystick, :id, :x, :y
  json.url joystick_url(joystick, format: :json)
end
