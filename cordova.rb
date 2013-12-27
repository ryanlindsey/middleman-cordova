class Cordova < Middleman::Extension
  def initialize(app, options_hash={}, &block)
    super
    app.set :build_dir,   'build'
    app.set :css_dir,     'css'
    app.set :js_dir,      'js'
    app.set :images_dir,  'img'

    app.after_build do |builder|
      builder.run('cp ../www/config.xml build')
      builder.run('rm -R ../www')
      builder.run('mv -f build ../www')
      builder.run('cordova prepare')
    end
  end
end

::Middleman::Extensions.register(:cordova, Cordova)