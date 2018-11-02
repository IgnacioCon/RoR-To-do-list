require 'rails_helper'

RSpec.describe TodoListsController, :type => :controller do 
  
  describe "GET index" do
    it "it has a 302 status code if not logged in" do 
      get :index
      expect(response.status).to eq(302)
    end
  end
  describe "responds to" do
    it "responds to html by default" do
      get :index
      expect(response.content_type).to eq "text/html"
    end

    it "responds to csv" do
      get :index, :format => :csv
      expect(response.content_type).to eq "text/csv"
    end

    it "responds to pdf" do
      get :index, :format => :pdf
      expect(response.content_type).to eq "application/pdf"
    end
 
  end



end