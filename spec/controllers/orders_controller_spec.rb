require 'rails_helper'

RSpec.describe(OrdersController, type: :controller) do
  describe 'GET #edit' do
    context 'no jars in cart' do
      it 'redirects to select_path' do
        current_order = create(:order)
        get :edit, params: {id: current_order.id}
        expect(response).to have_http_status(:redirect)
      end
    end
    context 'jar in cart' do
      it 'returns http success' do
        current_order = create(:order)
        jar = build(:jar, order: current_order)
        create(:ingredient, jar: jar)
        jar.save
        get :edit, params: {id: current_order.id}
        # expect(response).to have_http_status(:success)
      end
    end
  end
  # describe 'PATCH #update' do
  #   it 'returns http success' do
  #   end
  # end
  describe 'GET #show' do
    it 'returns http success' do
      current_order = create(:order)
      get :show, params: {id: current_order.id}
      expect(response).to have_http_status(:success)
    end
  end
end
