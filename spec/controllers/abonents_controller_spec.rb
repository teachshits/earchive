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

describe AbonentsController do

  # This should return the minimal set of attributes required to create a valid
  # Abonent. As you add validations to Abonent, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  describe "GET index" do
    it "assigns all abonents as @abonents" do
      abonent = Abonent.create! valid_attributes
      get :index
      assigns(:abonents).should eq([abonent])
    end
  end

  describe "GET show" do
    it "assigns the requested abonent as @abonent" do
      abonent = Abonent.create! valid_attributes
      get :show, :id => abonent.id
      assigns(:abonent).should eq(abonent)
    end
  end

  describe "GET new" do
    it "assigns a new abonent as @abonent" do
      get :new
      assigns(:abonent).should be_a_new(Abonent)
    end
  end

  describe "GET edit" do
    it "assigns the requested abonent as @abonent" do
      abonent = Abonent.create! valid_attributes
      get :edit, :id => abonent.id
      assigns(:abonent).should eq(abonent)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Abonent" do
        expect {
          post :create, :abonent => valid_attributes
        }.to change(Abonent, :count).by(1)
      end

      it "assigns a newly created abonent as @abonent" do
        post :create, :abonent => valid_attributes
        assigns(:abonent).should be_a(Abonent)
        assigns(:abonent).should be_persisted
      end

      it "redirects to the created abonent" do
        post :create, :abonent => valid_attributes
        response.should redirect_to(Abonent.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved abonent as @abonent" do
        # Trigger the behavior that occurs when invalid params are submitted
        Abonent.any_instance.stub(:save).and_return(false)
        post :create, :abonent => {}
        assigns(:abonent).should be_a_new(Abonent)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Abonent.any_instance.stub(:save).and_return(false)
        post :create, :abonent => {}
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested abonent" do
        abonent = Abonent.create! valid_attributes
        # Assuming there are no other abonents in the database, this
        # specifies that the Abonent created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Abonent.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => abonent.id, :abonent => {'these' => 'params'}
      end

      it "assigns the requested abonent as @abonent" do
        abonent = Abonent.create! valid_attributes
        put :update, :id => abonent.id, :abonent => valid_attributes
        assigns(:abonent).should eq(abonent)
      end

      it "redirects to the abonent" do
        abonent = Abonent.create! valid_attributes
        put :update, :id => abonent.id, :abonent => valid_attributes
        response.should redirect_to(abonent)
      end
    end

    describe "with invalid params" do
      it "assigns the abonent as @abonent" do
        abonent = Abonent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Abonent.any_instance.stub(:save).and_return(false)
        put :update, :id => abonent.id, :abonent => {}
        assigns(:abonent).should eq(abonent)
      end

      it "re-renders the 'edit' template" do
        abonent = Abonent.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Abonent.any_instance.stub(:save).and_return(false)
        put :update, :id => abonent.id, :abonent => {}
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested abonent" do
      abonent = Abonent.create! valid_attributes
      expect {
        delete :destroy, :id => abonent.id
      }.to change(Abonent, :count).by(-1)
    end

    it "redirects to the abonents list" do
      abonent = Abonent.create! valid_attributes
      delete :destroy, :id => abonent.id
      response.should redirect_to(abonents_url)
    end
  end

end
