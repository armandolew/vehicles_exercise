require "rails_helper"
RSpec.describe Vehicle, :type => :model do
  before(:all) do
    @vehicle = create(:vehicle)
  end

  it "is valid with valid attributes" do
    expect(@vehicle).to be_valid
  end
end
