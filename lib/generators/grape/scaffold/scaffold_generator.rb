module Grape
  class ScaffoldGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    argument :model_name, type: :string
    argument :attributes, type: :array, default: []

    class_option :controller_path, desc: 'Set default controller path', type: :string, default: 'app/controllers/api/v1'
    class_option :skip_model_tests, :desc => 'Skip generated model tests', :type => :boolean
    class_option :skip_controller_tests, :desc => 'Skip generated controller tests', :type => :boolean

    def generate_model
      generate 'model', "#{model_name} #{attributes.join(' ')}"
    end

    def generate_model_specs
      unless options[:skip_model_tests]
        template 'model_spec.erb', "spec/models/#{model_name.singularize.underscore}_spec.rb"
      end
    end

    def generate_controller
      template 'controller.erb', "#{options[:controller_path]}/#{model_name.pluralize.underscore}.rb"
    end

    def generate_controller_specs
      unless options[:skip_controller_tests]
        template 'controller_spec.erb', "spec/requests/#{model_name.singularize.underscore}_spec.rb"
      end
    end

    protected
      def attribute_name(attribute)
        attribute.split(':').first
      end

      def attribute_is_id?(attribute)
        attribute.split(':').first.last(3) == "_id"
      end

      def attribute_without_id(attribute)
        attribute.split(':').first[0..-4]
      end
  end
end
