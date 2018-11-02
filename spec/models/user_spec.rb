require 'rails_helper'

RSpec.describe User, type: :model do 
  context "validates fields" do
    it 'checks for image' do 
        user = User.new
        expect(user.has_image_attached).to eq(["Please upload a picture!"])
    end
  end
end