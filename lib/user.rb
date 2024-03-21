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

  sig do  params(
    name: String,
    age: Integer).returns(String)
  end
  def hello(name:, age:)
    ""
  end
end
