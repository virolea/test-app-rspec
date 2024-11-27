require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
    @user = FactoryBot.create(:user)
  end

  after(:all) do
    @user.destroy
  end

  it "exists" do
    expect(User.exists?(@user.id)).to eq true
  end
end
