# ImageZoomer

This is a Rails gem for my [image_zoomer](https://github.com/ilatif/image_zoomer) jQuery plugin. This gem provides an easy way to integrate `image_zoomer` jQuery plugin with your Rails apps.

## Installation

Add this line to your application's Gemfile:

    gem 'image_zoomer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install image_zoomer

## Usage

To use this gem you can use standard `image_tag` helper that Rails provides. To have image zooming effect on your desired images you have to apply `image_zoomer` class on images. For example:

	image_tag("/path/to/your/image.ext", :class => 'image_zoomer')
	
Recommended way is to use `zoom_image_tag` helper that this gem provides. By using `zoom_image_tag` helper you don't have to provide `image_zoomer` class.

	zoom_image_tag("/path/to/your/image.ext", :id => "my_image")
	
`zoom_image_tag` is 100% identical to `image_tag`. You can use it in the same way and pass same options that you can pass to `image_tag`. You can also provide `:class => 'class1 class2'` option in `zoom_image_tag` and your provided classes will be applied.

By-default `width` and `height` of zoom lens are set to `90px` and `zoom_level` is set to `1.5`.  To override these default settings you can create an initializer with `image_zoomer.rb` name under `config/initializers` directory and use following code:

	Rails.application.config.image_zoomer.set_options do |options|
		options.width = 30
		options.height = 30
	end
	
The above code will override `width` and `height` properties. As we haven't overridden `zoom_level` so it will remain at `1.5`. Restart your server to see these changes in action.

**Note: This gem prepares values dynamically for jQuery plugin when server starts. Due to asset pipeline issue if you make some change in code that overrides default image zooming settings then those changes don't take effect. To make sure that your changes always apply when you start / restart server this gem is deleting tmp/cache/assets directory in development mode. I hope your application is fine with this :-).**


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
