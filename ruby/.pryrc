if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 'f', 'finish'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'q', 'quit'
  Pry.commands.alias_command 'w', 'whereami'
end

Pry.config.color = true
