require 'rails/generators'

module Euphoria
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('..', __FILE__)
    
    class_option :stylesheet, :type => :boolean, default: false, desc: "generates all stylesheets "
    class_option :js, :type => :boolean, default: false, desc: "generates all Javascript source files"
    class_option :all, :type => :boolean, default: false, desc: "generates both js and css files "
    
    desc "by default running rails g euphoria:install with no arguments will simply inject the css and JS files required"
    def install
      if(options[:stylesheet])
        copy_styles
      elsif (options[:js])
        copy_js
      elsif (options[:all])
        install_all
      else
        inject_css_and_js
      end
    end #end install method
    private
      def copy_js
        directory 'templates/javascripts/', 'app/assets/javascripts/'
      end #end copy JS
      def copy_styles
        directory 'templates/stylesheets/', 'app/assets/stylesheets/'
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
        inject_css_and_js
      end
  end #end Class Install Generator
end #end Module
