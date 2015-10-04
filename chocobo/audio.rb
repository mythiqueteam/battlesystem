module Chocobo
  class Audio < Choco

    def self.play_theme(theme)
      play_theme("themes/#{theme}")
    end

    def self.play_song(theme)
      play_theme("songs/#{theme}")
    end


    private
    def self.play_theme(theme)
      MG::Audio.play("audio/#{theme}")
    end
  end
end
