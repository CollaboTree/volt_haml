puts "LOADING UPPPP"

module VoltHaml
  class HAMLHandler
    def call(file_contents)
      Haml::Engine.new(file_contents).render
    end
  end
end

Volt::ComponentTemplates.register_template_handler :haml, VoltHaml::HAMLHandler.new
puts "added VoltHaml::HAMLHandler.new"
puts "Volt::ComponentTemplates: #{Volt::ComponentTemplates.inspect}" 