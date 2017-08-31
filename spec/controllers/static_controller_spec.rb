require 'rails_helper'

RSpec.describe(StaticController, type: :controller) do
  describe 'GET #start' do
    it 'returns http success' do
      get :start
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #home' do
    it 'returns http success' do
      get :home
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #about' do
    it 'returns http success' do
      get :about
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #why' do
    it 'returns http success' do
      get :why
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #select' do
    it 'returns http success' do
      get :select
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #herbalab' do
    it 'returns http success' do
      get :herbalab
      expect(response).to have_http_status(:success)
    end
  end
  describe 'GET #showherb' do
    it 'returns http success' do
      herb = create(:herb)
      get :showherb, params: {id: herb.id}
      expect(response).to have_http_status(:success)
    end
  end
end
