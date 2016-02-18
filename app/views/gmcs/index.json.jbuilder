json.array!(@gmcs) do |gmc|
  json.extract! gmc, :id
  json.url gmc_url(gmc, format: :json)
end
