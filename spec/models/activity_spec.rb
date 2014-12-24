require 'rails_helper'

RSpec.describe Activity, :type => :model do
  describe ".validations" do
    let(:activity) { Activity.create(name: "restraints") }
    it "must have a name" do
      expect(Activity.create(name: nil).valid?).to eq false
    end

    it "that name must be unique" do
      activity
      expect(Activity.create(name: "restraints").valid?).to eq false
    end
  end
end
