require 'spec_helper'

describe WardrobeItemsController do
<<<<<<< HEAD
  describe 'GET index' do 
    it "assigns all wardrobe items as @wardrobe_items" do
      wardrobe_item = WardrobeItem.create
=======

  let(:valid_attribtues) { { "garment" => "boots"} }

  describe 'GET index' do
    it "assigns all wardrobe items as @wardrobe_items" do
      wardrobe_item = WardrobeItem.create valid_attribtues
>>>>>>> day-3-start
      get :index

      expect(assigns('wardrobe_items')).to eq([wardrobe_item])
    end
  end

  describe 'GET show' do
<<<<<<< HEAD
    it "displays information about a single item as wardrobe_item" do
      wardrobe_item = WardrobeItem.create
      get :show, { :id => wardrobe_item }
=======
    it "assigns the requested wardrobe item as @wardrobe_item" do
      wardrobe_item = WardrobeItem.create valid_attribtues
      get :show, { id: wardrobe_item.id }
>>>>>>> day-3-start

      expect(assigns('wardrobe_item')).to eq(wardrobe_item)
    end
  end
<<<<<<< HEAD
end #closes WardrobeItemsController
=======

  describe "GET new" do
    it "assigns a new wardrobe_item as @wardrobe_item" do
      get :new
 
    expect(assigns(:wardrobe_item)).to be_a_new(WardrobeItem)
    end
  end

  describe "POST create" do
    context "with valid params" do
      it "creates a new WardrobeItem" do
        expect {
          post :create, { wardrobe_item: valid_attribtues }
        }.to change(WardrobeItem, :count).by(1)
      end

      it "assigns a newly created WardrobeItem as @wardrobe_item" do
        post :create, { wardrobe_item: valid_attribtues }

        expect(assigns(:wardrobe_item)).to be_a(WardrobeItem)
        expect(assigns(:wardrobe_item)).to be_persisted
      end

      it "redirects to the created WardrobeItem" do
        post :create, {wardrobe_item: valid_attribtues }

        expect(response).to redirect_to(WardrobeItem.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved wardrobe_item as @wardrobe_item" do
        allow_any_instance_of(WardrobeItem).to receive(:save).and_return(false)

        post :create, {:wardrobe_item => { color: 'red' }}
        expect(assigns(:wardrobe_item)).to be_a_new(WardrobeItem)
      end

      it "re-renders the 'new' template" do
        allow_any_instance_of(WardrobeItem).to receive(:save).and_return(false)

        post :create, {:wardrobe_item => { color: 'red' }}
        expect(response).to render_template("new")
      end
    end
  end
end
>>>>>>> day-3-start
