module SpreeFaq
  module Generators
    class InstallGenerator < Rails::Generators::Base
      
      def add_migrations
        run 'rake railties:install:migrations FROM=spree-faq'
      end

      def run_migrations
        res = ask "Would you like to run the migrations now? [Y/n]"
        if res == "" || res.downcase == "y"
         run 'rake db:migrate'
        else
         puts "Skipping rake db:migrate, don't forget to run it!"
        end
      end
      
      def add_javascripts
        append_file 'app/assets/javascripts/store/all.js', "//= require store/spree_faq\n"
        append_file 'app/assets/javascripts/admin/all.js', "//= require admin/jquery.scrollTo-min\n"
        append_file 'app/assets/javascripts/admin/all.js', "//= require admin/spree_faq\n"
      end

      def add_stylesheets
        inject_into_file 'app/assets/stylesheets/store/all.css', " *= require store/spree_faq\n", :before => /\*\//, :verbose => true
      end
    end
  end
end