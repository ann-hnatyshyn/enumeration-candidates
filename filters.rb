# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  if id == candidate[:id]
    return candidate
  else 
    return nil
 end
  
  def experienced?(candidate)
    if candidate[:years_of_experience] >= 2 ? true : false
  end
  
  def qualified_candidates(candidates)

    candidates.select do |candidate|
      experienced? &&
      candidate[:github_points] >= 100 points &
      candidate[:lanuages].include("Ruby") && candidate[:lanuages].include('Python')
      candidate[:date_applied] <= 15.days.ago.to_date
      candidate[:age] >= 17
      return candidate
    end

  end
  
  # More methods will go below

  def ordered_by_qualifications (candidates)
    candidates.sort_by{|candidate| [candidate[:years_of_experience], -candidate[:github_points]]}
  end
