# Practice problem 14

# Given this data structure write some code to return an array containing the colors 
# of the fruits and the sizes of the vegetables. The sizes should be uppercase and 
# the colors should be capitalized.

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

# The return value should look like this:
# [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]



answer_array = hsh.map do |_, v|
  if v[:type] == 'fruit'
    v[:colors].map { |colour| colour.capitalize }
  elsif v[:type] == 'vegetable'
    v[:size].upcase
  end
end

p answer_array

p hsh.each { |k,v| puts "#{k} : #{v}" }
