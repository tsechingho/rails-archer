module Rails
  module Archer
    class AppBuilder < Rails::AppBuilder
      def readme
        copy_file 'README', 'README.md'
      end
    end
  end
end
