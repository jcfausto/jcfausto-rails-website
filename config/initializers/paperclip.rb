#http://stackoverflow.com/questions/9646549/default-url-in-paperclip-broke-with-asset-pipeline-upgrade

Paperclip.interpolates(:placeholder) do |attachment, style|
  ActionController::Base.helpers.asset_path("project_missing_#{style}.png")
end
