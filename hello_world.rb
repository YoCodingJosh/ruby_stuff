def say_my_name(name)
  puts "Hello #{name}!"
end

# main check
if $PROGRAM_NAME == __FILE__
  say_my_name "Josh"
end
