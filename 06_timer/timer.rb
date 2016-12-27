class Timer
  def initialize()
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string()
    @hours.to_s.rjust(2,"0") + ":" + @minutes.to_s.rjust(2,"0") + ":" + @seconds.to_s.rjust(2,"0")
  end
  
  def seconds=(sec)
    @hours = sec/3600
    
    if sec<60
      @seconds = sec
    else
      @seconds = sec - 60*(sec/60)
    end
    
    if sec<3600
      @minutes = sec/60
    else
      @minutes = sec/60 - 60*@hours
    end
    
  end
    
  def seconds()
    @seconds
  end
end
