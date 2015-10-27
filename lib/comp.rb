require 'pry'
require './lib/complete_me'
require './lib/node'

completion = CompleteMe.new

# completion.add_first_to_letters("ab")
p completion.insert("We")
p completion.insert("weekly")
p completion.insert("weekend")
# p completion.insert("pia")
p completion.insert("pi")
p completion.insert("pia")

# binding.pry

# p completion.insert("")

# binding.pry
# p completion.insert("ac")


# p completion.letter_links
p completion
# binding.pry
p completion.count
