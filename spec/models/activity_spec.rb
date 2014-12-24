require 'rails_helper'

RSpec.describe Activity, :type => :model do
  describe ".validations" do
    it "must have a name" do
      expect(Activity.create(name: nil).valid?).to eq false
    end

    it "that name must be unique" do
      
    end
  end
end
