require 'pry'
require './lib/complete_me'
require './lib/node'

completion = CompleteMe.new

# completion.add_first_to_letters("ab")
p completion.insert("week")
p completion.insert("weekly")
p completion.insert("weekend")
p completion.insert("pizza")
# binding.pry

# p completion.insert("")

# binding.pry
# p completion.insert("ac")


# p completion.letter_links
p completion
