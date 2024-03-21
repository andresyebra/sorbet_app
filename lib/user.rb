# typed: true
#  frozen_string_literal: true

require "sorbet-runtime"

# User common class
class User
  extend T::Sig
  attr_reader :name, :age

  sig { params(name: String, age: Integer).void }
  def initialize(name:, age:)
    @name = name
    @age = age
  end

  sig { returns(String) }
  def hello = "Hello: #{name}"
end
