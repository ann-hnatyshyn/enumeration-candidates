# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  if id === candidate[:id]
    print candidate
  else 
    print nil
 end
  
  def experienced?(candidate)
    if candidate[:years_of_experience] >= 2
      print true
    else
      print false
  end
  
  def qualified_candidates(candidates)
    print candidate if
    candidate[:years_of_experience] >= 2
    candidate[:github_points] >= 100
    candidate[:languages] == 'Ruby' || 'Python'
    candidate[:date_applied] 
  end
  
  # More methods will go below

  def ordered_by_qualifications (candidates)
    candidates.sort_by{|candidate| [:years_of_experience], [:github_points]}
  end
