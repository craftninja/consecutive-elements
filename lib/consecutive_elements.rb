class ConsecutiveElements
  def initialize (schedule)
    @schedule = schedule
  end

  def consecutive_count
    consecutive_count = []
    cci = 0
    activity_counter = 1
    @schedule.each_with_index do |activity, i|
      if activity == @schedule[i-1]
        activity_counter +=1
        consecutive_count[cci] = [activity, activity_counter]
      else
        activity_counter = 1
        cci +=1
        consecutive_count[cci] = [activity, activity_counter]
      end
    end
    consecutive_count.delete_at(0)
    consecutive_count
  end

end
