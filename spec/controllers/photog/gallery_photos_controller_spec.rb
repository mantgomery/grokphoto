require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe Photog::GalleryPhotosController do

  # This should return the minimal set of attributes required to create a valid
  # GalleryPhoto. As you add validations to GalleryPhoto, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all gallery_photos as @gallery_photos" do
      gallery_photo = GalleryPhoto.create! valid_attributes
      get :index
      assigns(:gallery_photos).should eq([gallery_photo])
    end
  end

  describe "GET show" do
    it "assigns the requested gallery_photo as @gallery_photo" do
      gallery_photo = GalleryPhoto.create! valid_attributes
      get :show, :id => gallery_photo.id.to_s
      assigns(:gallery_photo).should eq(gallery_photo)
    end
  end

  describe "GET new" do
    it "assigns a new gallery_photo as @gallery_photo" do
      get :new
      assigns(:gallery_photo).should be_a_new(GalleryPhoto)
    end
  end

  describe "GET edit" do
    it "assigns the requested gallery_photo as @gallery_photo" do
      gallery_photo = GalleryPhoto.create! valid_attributes
      get :edit, :id => gallery_photo.id.to_s
      assigns(:gallery_photo).should eq(gallery_photo)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new GalleryPhoto" do
        expect {
          post :create, :gallery_photo => valid_attributes
        }.to change(GalleryPhoto, :count).by(1)
      end

      it "assigns a newly created gallery_photo as @gallery_photo" do
        post :create, :gallery_photo => valid_attributes
        assigns(:gallery_photo).should be_a(GalleryPhoto)
        assigns(:gallery_photo).should be_persisted
      end

      it "redirects to the created gallery_photo" do
        post :create, :gallery_photo => valid_attributes
        response.should redirect_to(photog_gallery_photo_url(GalleryPhoto.last))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved gallery_photo as @gallery_photo" do
        # Trigger the behavior that occurs when invalid params are submitted
        GalleryPhoto.any_instance.stub(:save).and_return(false)
        post :create, :gallery_photo => {}
        assigns(:gallery_photo).should be_a_new(GalleryPhoto)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        GalleryPhoto.any_instance.stub(:save).and_return(false)
        post :create, :gallery_photo => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested gallery_photo" do
        gallery_photo = GalleryPhoto.create! valid_attributes
        # Assuming there are no other gallery_photos in the database, this
        # specifies that the GalleryPhoto created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        GalleryPhoto.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => gallery_photo.id, :gallery_photo => {'these' => 'params'}
      end

      it "assigns the requested gallery_photo as @gallery_photo" do
        gallery_photo = GalleryPhoto.create! valid_attributes
        put :update, :id => gallery_photo.id, :gallery_photo => valid_attributes
        assigns(:gallery_photo).should eq(gallery_photo)
      end

      it "redirects to the gallery_photo" do
        gallery_photo = GalleryPhoto.create! valid_attributes
        put :update, :id => gallery_photo.id, :gallery_photo => valid_attributes
        response.should redirect_to(photog_gallery_photo_url(gallery_photo))
      end
    end

    describe "with invalid params" do
      it "assigns the gallery_photo as @gallery_photo" do
        gallery_photo = GalleryPhoto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GalleryPhoto.any_instance.stub(:save).and_return(false)
        put :update, :id => gallery_photo.id.to_s, :gallery_photo => {}
        assigns(:gallery_photo).should eq(gallery_photo)
      end

      it "re-renders the 'edit' template" do
        gallery_photo = GalleryPhoto.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        GalleryPhoto.any_instance.stub(:save).and_return(false)
        put :update, :id => gallery_photo.id.to_s, :gallery_photo => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested gallery_photo" do
      gallery_photo = GalleryPhoto.create! valid_attributes
      expect {
        delete :destroy, :id => gallery_photo.id.to_s
      }.to change(GalleryPhoto, :count).by(-1)
    end

    it "redirects to the gallery_photos list" do
      gallery_photo = GalleryPhoto.create! valid_attributes
      delete :destroy, :id => gallery_photo.id.to_s
      response.should redirect_to(photog_gallery_photos_url)
    end
  end

end
