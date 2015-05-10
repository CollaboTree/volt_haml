module VoltHaml
  class HAMLHandler
    def call(file_contents)
      Haml::Engine.new(file_contents).render
    end
  end
end

if defined?(Volt::ComponentTemplates)
  Volt::ComponentTemplates.register_template_handler :haml, VoltHaml::HAMLHandler.new
end