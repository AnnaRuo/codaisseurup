require 'rails_helper'

RSpec.describe Profile, type: :model do

  describe ".by_letter" do

    subject { Profile.by_initial("S") }

    let(:sander) { create :profile, first_name: "Sander" }
    let(:stefan) { create :profile, first_name: "Stefan" }
    let(:wouter) { create :profile, first_name: "Wouter" }

      context "matching letters" do
        it "returns the profiles that match the initial" do
          expect(subject).to match_array([stefan, sander])
        end
      end

      context "non-matching letters" do
        it "does not return profiles that don't start with the given letter" do
          expect(subject).to eq([sander, stefan])
        end
      end
    end
end
