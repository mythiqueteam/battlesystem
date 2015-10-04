module Chocobo
  class Screen < Choco

    def self.size
      { width: MG::Director.shared.size.width, height: MG::Director.shared.size.height }
    end
  end
end
