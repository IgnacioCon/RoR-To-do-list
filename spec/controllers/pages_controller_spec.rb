require 'rails_helper'

RSpec.describe PagesController, type: :controller do
    context "Get Pages" do
       it 'Gets Home' do
        get :home 
        expect(response.status).to eq(200)
       end
       it 'Gets indlist' do
        get :indlist
        expect(response.status).to eq(200)
       end
       it 'Gets profile' do
        get :profile 
        expect(response.status).to eq(200)
       end
    end
end
