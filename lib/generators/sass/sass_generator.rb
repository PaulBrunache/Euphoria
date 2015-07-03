require 'rails/generators'


module Bootstrap
  class AdvancedGenerator < Rails::Generators::Base
    source_root File.expand_path('..', __FILE__)

    # get stylesheets
    def get_stylesheets
      directory 'app/assets/stylesheets/', 'app/assets/stylesheets/'
    end
  end
end