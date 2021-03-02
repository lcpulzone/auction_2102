require './lib/item'
require './lib/attendee'

class Auction
  attr_reader :items,
              :bids

  def initialize
    @items = []
    @bids = {}
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map do |names|
      names.name
    end
  end

  def add_bid(attendee, bid_amount)
    @bids[attendee] = bid_amount
  end

  def current_high_bid
    high_bid = @bids.find do |attendee, bid_amount|
      bid_amount.max
      high_bid
    end
  end

  def unpopular_items
    no_bids = []
    @items.each do |item|
      no_bids << if item != @bids
      end
    end
    no_bids
  end

  def potential_revenue
    revenue = @bids.find_all do |attendee, bid_amount|
      revenue += bid_amount if bid_amount.max > bid_amount.min
    end
  end

  def bidders
    names = @bids.find_all do |attendee, bid_amount|
      attendee.name
    end.flatten
  end
end
