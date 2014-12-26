require 'rails_helper'

RSpec.describe ActivitiesController, :type => :controller do
  let(:activity) { Activity.create(name: "restraints") }
  let(:admin_user) { User.create(email: "k@gmail.com", password: "12345", password_confirmation: "12345", admin: true) }
  let(:user) { User.create(email: "k@aol.com", password: "54321", password_confirmation: "54321") }

  describe "POST create" do
    it "creates a new activity in database" do
      sign_in_as(admin_user)

      expect {
        post :create, {activity:{name: ["massage oil"]}}
      }.to change{Activity.count}.by(1)
    end

    it "can create multiple activities in database" do
      sign_in_as(admin_user)

      expect {
        post :create, {activity:{name: ["massage oil", "kissing"]}}
      }.to change{Activity.count}.by(2)
    end

    it "non-admin users cannot add activities to database" do
      sign_in_as(user)

      expect {
        post :create, {activity:{name: ["massage oil"]}}
      }.to change{Activity.count}.by(0)
    end
  end

  describe "POST destroy" do
    it "removes an activity from database" do
      activity
      sign_in_as(admin_user)

      expect {
        post :destroy, {id: activity.id}
      }.to change{Activity.count}.by(-1)
    end
  end
end
