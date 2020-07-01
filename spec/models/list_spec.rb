# frozen_string_literal: true

require "rails_helper"

RSpec.describe List, type: :model do

  it "validates presence" do
    list = List.new
    expect(list).to be_invalid
    expect(list.errors[:title]).to include("can't be blank")
  end

end
