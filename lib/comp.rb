require 'pry'
require './lib/complete_me'
require './lib/node'

completion = CompleteMe.new


# words = "This\n"
# words = "This\nis\n"
# words = "This\nis\na\n"
# words = "This\nis\na\ntest"
completion.populate(words)
# p completion.insert("we")
# p completion.insert("w")
# p completion.insert("wet")
# p completion.insert("wetter")

# p completion.insert("We")
# p completion.insert("weekly")
# p completion.insert("weekend")
# # p completion.insert("pia")
# p completion.insert("pi")
# p completion.insert("pia")

# binding.pry

# p completion.insert("")
# p completion
# binding.pry
# p completion.insert("ac")


# p completion.letter_links
# p completion.head.letter_links
# binding.pry
p completion.count
# p completion.suggest("we")
