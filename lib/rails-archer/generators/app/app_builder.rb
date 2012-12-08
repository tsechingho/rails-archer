module Rails
  module Archer
    class AppBuilder < Rails::AppBuilder
      def readme
        copy_file 'README', 'README.md'
      end

      def app
        empty_directory 'app'
        inside 'app' do
          empty_directory 'assets'
          inside 'assets' do
            empty_directory_with_gitkeep 'images'
            directory 'javascripts'
            directory 'stylesheets'
          end
          directory 'controllers'
          directory 'helpers'
          empty_directory_with_gitkeep 'mailers'
          empty_directory_with_gitkeep 'models'
          directory 'views'
        end
      end

      def public_directory
        empty_directory 'public'
        inside 'public' do
          template '404.html'
          template '422.html'
          template '500.html'
          template 'favicon.ico'
          template 'robots.txt'
        end
      end

      def leftovers
      end
    end
  end
end
