class Diary

  def self.create_list
   @list = ["Week 4" ]
  
  end

  def self.return_list
    @list
  end

  def self.add(entry)
    @list << entry
  end

end