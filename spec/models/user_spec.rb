require 'rails_helper'

RSpec.describe User, type: :model do
  before :each do
    @user = User.create!(
      name: 'Sarah',
      email: 'sjmadro1@gmail.com',
      password: 'purple',
      password_confirmation: 'purple'
      )
  end

  describe 'Validations' do
    it 'is valid with valid params' do
      expect(@user).to be_valid
    end

    it 'is not valid without a password' do
      @user.password = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid without password confirmation' do
      @user.password_digest = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid without name'
      @user.name = nil
      expect(@user).to_not be_valid
    end

    it 'is not valid if password has less than 6 characters' do
      @user.password >= @user.password.length > 6
      expect(@user).to_not be_valid
    end
end


