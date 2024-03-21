# typed: true
# frozen_string_literal: true

require './lib/user'

def main
  user = User.new(name: 'John', age: "20".to_i)
  puts user.hello
end

main
