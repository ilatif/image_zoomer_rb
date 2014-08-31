# Contains code for zoom_image_tag helper
module ImageZoomer
	def zoom_image_tag(*args, &block)
		options = insert_zoom_class(args.extract_options!)
		args << options
		image_tag(*args, &block)
	end

	def insert_zoom_class(options)
		class_name = "image_zoomer"
		if options.key?(:class)
			options[:class] += " #{class_name}"
		elsif options.key?('class')
			options['class'] += " #{class_name}"
		else
			options[:class] = class_name
		end
		options
	end
end