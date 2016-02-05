json.array!(@download_excels) do |download_excel|
  json.extract! download_excel, :id, :name, :fristname, :lastname, :age
  json.url download_excel_url(download_excel, format: :json)
end
