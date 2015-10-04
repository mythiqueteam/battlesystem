module Chocobo
  class Images < Choco

    def self.get_texture(image)
      get_image("textures/#{image}")
    end

    def self.get_sprite(image)
      get_image("sprites/#{image}")
    end

    def self.get_element(image)
      get_image("elements/#{image}")
    end

    def self.element_size(image)
      image_size("elements/#{image}")
    end

    def self.sprite_size(image)
      image_size("sprites/#{image}")
    end

    def self.texture_size(image)
      image_size("textures/#{image}")
    end

    private
    def self.image_size(image)
      image = get_image("images/#{image}")

      { width: image.size.width, height: image.size.height }
    end

    def self.get_image(image)
      MG::Sprite.new("images/#{image}")
    end
  end
end
