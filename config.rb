require 'cordova'

after_configuration do
  sprockets.append_path "#{root}/bower_components/"
end

activate :cordova
activate :automatic_image_sizes
activate :livereload

with_layout :plain do
  page '/views'
end

configure :build do
  ignore 'js/lib/*'
  ignore 'css/lib/*'

  activate :minify_css
  activate :minify_javascript
  activate :asset_hash
  activate :relative_assets
end
