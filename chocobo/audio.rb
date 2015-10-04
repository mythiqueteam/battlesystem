module Chocobo
  class Audio < Choco

    def self.play_theme(theme)
      player("themes/#{theme}")
    end

    def self.play_song(theme)
      player("songs/#{theme}")
    end


    private
    def self.player(theme)
      MG::Audio.play("audio/#{theme}")
    end
  end
end
