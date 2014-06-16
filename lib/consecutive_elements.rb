class ConsecutiveElements
  def initialize (schedule)
    @schedule = schedule
  end

  def consecutive_count
    consecutive_count = []
    cci = 0
    @schedule.each_with_index do |activity, i|
      if activity == @schedule[i-1]
        consecutive_count[cci] = [activity, 2]
      else
        cci +=1
        consecutive_count[cci] = [activity, 1]
      end
    end
    consecutive_count.delete_at(0)
    consecutive_count
  end

end
