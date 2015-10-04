module Chocobo
  class Audio < Choco

    def self.play_mp3(theme)
      play_theme("#{theme}.mp3")
    end

    def self.play_wave(theme)
      play_theme("#{theme}")
    end

    def self.play_ogg(theme)
      play_theme("#{theme}.ogg")
    end

    private
    def self.play_theme(theme)
      MG::Audio.play("themes/#{theme}")
    end
  end
end
