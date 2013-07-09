require 'test_helper'

module Poker
  describe Deck do
    before do
      @deck = Deck.new
    end

    it "has 52 elements" do
      assert_equal 52, @deck.size
      @deck.each { |card| assert_kind_of Card, @deck.first }
    end

    it "has 13 ranks" do
      assert_equal 13, @deck.map(&:rank).uniq.size
    end

    it "has 4 suits" do
      assert_equal 4, @deck.map(&:suit).uniq.size
    end
  end
end
