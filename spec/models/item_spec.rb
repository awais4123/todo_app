# frozen_string_literal: true

require "rails_helper"

RSpec.describe Item, type: :model do

  it "validates presence" do
    item = Item.new
    expect(item).to be_invalid
    expect(item.errors[:title]).to include("can't be blank")
  end

end