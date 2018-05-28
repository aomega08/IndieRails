class MediumRenderer
  include ActionView::Helpers::AssetTagHelper

  def self.render(medium, img_attributes = {})
    webp_source = tag.source(type: 'image/webp', srcset: srcset(medium, format: :webp), sizes: sizes)
    default_source = tag.source(srcset: srcset(medium), sizes: sizes)
    fallback_image = image_tag(medium.file.url(:post), alt: medium.default_alt, img_attributes)

    tag.picture(webp_source + default_source + fallback_image)
  end

  def srcset(medium, format: nil)
    suffix = format ? "_#{format}" : ''
    images = {
      image.file.url(:"thumb#{suffix}") => '300w',
      image.file.url(:"post#{suffix}") => '750w',
      image.file.url(:"large#{suffix}") => '1200w',
    }

    images.map { |src, size| "#{path_to_image(src)} #{size}" }.join(', ')
  end

  def sizes
    '(min-width: 782px) 750w, 100vw'
  end
end