require 'rails_helper'

RSpec.describe ListsController, :type => :controller do
  let(:user) { User.create(email: "k@aol.com", password: "54321", password_confirmation: "54321") }

  describe "POST create" do
    context "when successful" do
      it "creates a list in database" do
        sign_in_as(user)

        expect {
          post :create, {list:{name: "My Yes, No, Maybe List"}}
        }.to change{List.count}.by(1)
      end

      it "creates a relationship in database" do
        sign_in_as(user)

        expect {
          post :create, {list:{name: "My Yes, No, Maybe List"}}
        }.to change{Relationship.count}.by(1)
      end

      # it "is associated with a user through relationship model" do
      #
      #
      # end

      # it "redirects you to the list show page" do
      #
      # end
    end
  end

  describe "GET show" do

  end
end
