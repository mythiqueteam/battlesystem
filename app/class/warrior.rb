module Class
  class Warrior < Class:Job
    def initialize()
      @name = "warrior"
      @status.hit_point = 10
      @status.magic_point = -1
      @status.force = 2
      @status.defense = 1
    end
  end

end
