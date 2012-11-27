require 'rails/generators'
require 'rails/generators/rails/app/app_generator'

module Rails
  module Archer
    class AppGenerator < Rails::Generators::AppGenerator
      class << self
        def default_source_root
          path = File.join default_generator_root, 'templates'
          path if File.exists? path
        end

        protected

        def default_generator_root
          File.dirname __FILE__
        end

        def banner
          "shoot new #{self.arguments.map(&:usage).join(' ')} [options]"
        end
      end

      source_root default_source_root

      source_paths << default_source_root
      source_paths << Rails::Generators::AppGenerator.source_root

      class_option :database, default: 'mysql'
      class_option :skip_test_unit, default: true

      def initialize(*args)
        if args[0].blank?
          raise Rails::Generators::Error, <<-NOTICE.strip_heredoc
            Options should be given after the application name.
            For details run: shoot --help
          NOTICE
        end
        super
      end

      protected

    end
  end
end
