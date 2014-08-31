class Railtie < Rails::Railtie

	initializer "image_zoomer.configuration" do |app|
		app.config.image_zoomer = ImageZoomer::Configuration.new
		FileUtils.rm_rf("#{Rails.application.root}/tmp/cache/assets") if Rails.env.development?
	end

	initializer "image_zoomer.initialize_zoom_image_helper" do |app|
		ActiveSupport.on_load(:action_view) do 
			include ImageZoomer
		end
	end
end