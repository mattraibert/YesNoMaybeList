require "rails_helper"

RSpec.describe UserMailer, :type => :mailer do
  describe "password_reset" do
    let(:user) { User.create(email: "k@aol.com", password: "54321", password_confirmation: "54321") }
    let(:mail) { UserMailer.password_reset(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Reset Password")
      expect(mail.to).to eq(["k@aol.com"])
      expect(mail.from).to eq(["info@yesnomaybe.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("To reset your password, click the link below.")
    end
  end

end
