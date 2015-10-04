class MainScene < MG::Scene
  def initialize
    Chocobo::Audio.play_theme("main-theme.mp3")
  end
end
