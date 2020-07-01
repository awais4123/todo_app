require 'rails_helper'

RSpec.describe ListsController, type: :controller do
  # Doing it here to save up time
  let(:list) { List.create(title: 'Test Title') }
  
  describe "GET index" do
    it "renders the index page" do
      get :index
      expect(response).to be_successful
    end
  end

  describe "POST create" do
    it "creates the list when title is present" do
      post :create, params: { list: { title: 'Test List'}}

      expect(flash[:notice]).to_not be_nil
      expect(response).to redirect_to(root_path)
    end
  end

  describe "DELETE destroy" do
    it "the list" do
      delete :destroy, params: { id: list.id}
      
      expect(flash[:notice]).to_not be_nil
      expect(response).to redirect_to(root_path)
    end
  end

end
