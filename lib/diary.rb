class Diary

  def self.list
   @list = [ "Week 4" ]
  
  end

  def self.add(entry)
    @list << entry
  end

end