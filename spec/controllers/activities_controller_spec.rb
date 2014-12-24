require 'rails_helper'

RSpec.describe ActivitiesController, :type => :controller do
  let(:activity) { Activity.create(name: "restraints") }
  let(:admin_user) { User.create(email: "k@gmail.com", password: "12345", password_confirmation: "12345", admin: true) }
  let(:user) { User.create(email: "k@aol.com", password: "54321", password_confirmation: "54321") }

  describe "POST create" do
    it "creates a new activity in database" do
      admin_user
      current_user = admin_user #not sure why this is failing

      expect {
        post :create, {activity:{name: "massage oil"}}
      }.to change{Activity.count}.by(1)
    end

    # it "can create multiple activities in database" do
    #   admin_user
    #   current_user = admin_user
    #
    #   expect {
    #     post :create, {activity:{name: "massage oil", "kissing"}}
    #   }.to change{Activity.count}.by(2)
    # end

    it "non-admin users cannot add activities to database" do
      user

      expect {
        post :create, {activity:{name: "massage oil"}}
      }.to change{Activity.count}.by(0)
    end
  end


end
