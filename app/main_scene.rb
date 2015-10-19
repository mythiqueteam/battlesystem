class MainScene < MG::Scene
  def initialize
    Chocobo::Audio.play_theme("main-theme.mp3")
    @backgrounds = []
    add_background
  end

  def add_background
    x = 0
    @backgrounds << []

    img_size  = Chocobo::Image.texture_size("floor.png")

    round_height  = (Chocobo::Screen.size[:height] / img_size[:height]).floor
    round_width   = (Chocobo::Screen.size[:width] / img_size[:width]).floor

    y = Chocobo::Screen.size[:height] - (img_size[:height] / 2)

    round_height.times do

      round_width.times do
        floor = Chocobo::Image.get_texture("floor.png")
        floor.position = [x, y]
        add floor

        x += img_size[:width]
        @backgrounds.last << floor
      end

      x = 0
      y -= img_size[:height]
    end
  end
end
