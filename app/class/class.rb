module Class


    # Attributes of job grant bonus
    class Job
        def initialize(name, status=Stats::STATUS_ZERO)
            @name = name
            @status = status
        end
    end

end