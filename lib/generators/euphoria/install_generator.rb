require 'rails/generators'

module Euphoria
  class InstallGenerator < Rails::Generators::Base
    desc "This generator creates all source files used for this framework"
    source_root File.expand_path('..', __FILE__)
    
    option :stylesheet, type:boolean, default: false
    option :js, :type => :boolean, default: false
    option :all, :type => :boolean, default: false
    def install
      if(option[:stylesheet])
        copy_styles
      elsif (option[:js])
        copy_js
      elsif (option[:all])
        install_all
      else
        inject_css_and_js
      end
    end #end install method
    private
      def copy_js
        directory 'templates/stylesheets/', 'app/assets/stylesheets/'
      end #end copy JS
      def copy_styles
        directory 'templates/javascripts/', 'app/assets/javascripts/'
      end #end copy styles
    
      def inject_css_and_js
        application_js_path = 'app/assets/javascripts/application.js'
        application_css_path ='app/assets/stylesheets/application.css'
          if ::File.exists?(::File.join(destination_root, application_js_path))
            inject_into_file application_js_path, before: '//= require_tree' do
              "//= require UI_Modules\n"
            end
          end
          if ::File.exists?(::File.join(destination_root, application_css_path))
              inject_into_file application_css_path, before: '//= require_tree' do
                "*= require load\n"
              end
          end
      end #end inject Css
      def install_all
        copy_styles
        copy_js
        insert_css_and_js
      end
  end #end Class Install Generator
end #end Module
