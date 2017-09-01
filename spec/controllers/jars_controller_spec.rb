require 'rails_helper'

RSpec.describe(JarsController, type: :controller) do
  describe 'GET #new' do
    context 'selected base herb' do
      it 'returns http success' do
        baseherb = create(:baseherb)
        get :new, params: {base: baseherb.id}
        expect(response).to have_http_status(:success)
      end
    end
    context 'selected non-base herb' do
      it 'redirects to select page' do
        baseherb = create(:herb)
        get :new, params: {base: baseherb.id}
        expect(response).to have_http_status(:redirect)
      end
    end
  end
  # describe 'POST #create' do
  #   it 'returns http success' do
  #   end
  # end
  # describe 'DELETE #destroy' do
  #   it 'returns http success' do
  #   end
  # end
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
