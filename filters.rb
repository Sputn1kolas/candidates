# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  nil
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    true
  else
    false
  end
end

def qualified_candidates(candidates)
  qualified = @candidates.select do |candidate|
    experienced?(candidate) && candidate[:github_points] >= 100 && candidate[:date_applied] >= 15 && candidate[:age] > 17 && (knowLanguage(candidate, "Ruby") || knowLanguage(candidate, "Python"))
  end
  return qualified
end

def knowLanguage(candidate, language)
  candidate[:languages].each do |knownLanguage|
    if knownLanguage == language
      return true
    end
  end
  false
end

# More methods will go below
