require 'rails/generators'
require 'rails/generators/base'


module Euphoria
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    # get stylesheets
    def get_stylesheets
      directory 'templates/stylesheets', 'app/assets/stylesheets/'
    end
    def insert_css_and_js
        application_js_path = 'app/assets/javascripts/application.js'
        application_css_path ='app/assets/stylesheets/application.css'
      
        if ::File.exists?(::File.join(destination_root, application_js_path))
          inject_into_file application_js_path, before: '//= require_tree' do
            "//= require UI_Modules\n"
          end
        end
        if ::File.exists?(::File.join(destination_root, application_css_path))
            inject_into_file application_js_path, before: '//= require_tree' do
              "//= require load\n"
            end
        end
    end
  end
end
  
