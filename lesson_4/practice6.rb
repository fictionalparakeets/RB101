flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
# Amend this array so tha tthe names are all shortened to just the first three characters

flintstones.map! { |name| name[0, 3] }
p flintstones