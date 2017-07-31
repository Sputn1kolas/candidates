# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './candidates'
require './filters'

## Your test code can go here

# binding.pry

@candidates.each do |candidate|
  puts experienced?(candidate)
end

# pp "pretty prints" out the candidates.
# pp @candidates
