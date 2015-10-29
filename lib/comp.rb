require 'pry'
require_relative 'complete_me'
require_relative 'node'

completion = CompleteMe.new


# words = "This\n"
# words = "This\nis\n"
# words = "This\nis\na\n"
# words = "This\nis\na\ntest"
# completion.populate(words)

# p completion.insert("w")
p completion.insert("we")
p completion.insert("wet")
p completion.insert("wetter")
# p completion.insert("We")
# p completion.insert("weekly")
p completion.insert("weekend")
p completion.insert("pia")
# p completion.insert("pi")
# p completion.insert("")

p completion

# p completion.letter_links
# p completion.head.letter_links

p completion.count

# p completion.suggest("wet")
