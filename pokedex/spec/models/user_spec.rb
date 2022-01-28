# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = create(:user)   
  end
  it 'should create a user with valid inputs' do
    expect(@user).to be_valid
  end

  it 'should not create a user with missing email' do
    @user.email = nil
    expect(@user).to_not be_valid
  end
end
