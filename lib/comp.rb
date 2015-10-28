require 'pry'
require './lib/complete_me'
require './lib/node'

completion = CompleteMe.new


# p completion.insert("we")
p completion.insert("w")
p completion.insert("wet")

# p completion.insert("We")
# p completion.insert("weekly")
# p completion.insert("weekend")
# # p completion.insert("pia")
# p completion.insert("pi")
# p completion.insert("pia")

# binding.pry

# p completion.insert("")

# binding.pry
# p completion.insert("ac")


# p completion.letter_links
# p completion.head.letter_links
# binding.pry
# p completion.count
p completion.suggest("w")
