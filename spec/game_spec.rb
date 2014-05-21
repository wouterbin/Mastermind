require 'spec_helper'

module Mastermind
  class Code
  end

  class Guess

    def initialize(*colors)
    end

  end

  class CodeMaker
    def check(guess)
      Result.new
    end
  end

  class CodeBreaker
    def guess(*colors)
      Guess.new(colors)
    end
  end

  class Result
  end

  class Status
  end

  class Game

    def code_maker
      CodeMaker.new
    end

    def code_breaker
      CodeBreaker.new
    end

    def start
      Code.new
    end
    
  end
end

describe Mastermind::Game do

  it "should have a code maker" do
    subject.code_maker.should_not be_nil
  end

  it "should have a code breaker" do
    subject.code_breaker.should_not be_nil
  end

  it "should allow start" do
    subject.start.should be_a(Mastermind::Code)
  end

  it "should tell the code breaker to make a guess" do
    subject.code_breaker.guess.should be_a(Mastermind::Guess)
  end

  it "should tell the code maker to check a guess" do
    subject.code_maker.check(Mastermind::Guess.new([:r, :g, :b, :w])).should be_a(Mastermind::Result)
  end

end
