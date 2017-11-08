require 'rails_helper'

RSpec.describe Event, type: :model do


  describe "validations" do

    it "is invalid without a name" do
      event = Event.new(name: "")
      event.valid?
      expect(event.errors).to have_key(:name)
    end

    it "is invalid without a description" do
      event = Event.new(description: "")
      event.valid?
      expect(event.errors).to have_key(:description)
    end

    it "is invalid with a description longer than 500 characters" do
    event = Event.new(description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus porta mi nec urna facilisis, nec porttitor felis sagittis. In porttitor tellus vel nibh fermentum, at ornare tellus ultrices. Pellentesque condimentum aliquam sollicitudin. Mauris posuere lectus vel sagittis luctus. Quisque volutpat tellus orci. Mauris porttitor ipsum consequat elit sollicitudin, eget lacinia tortor maximus. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Maecenas nec sapien id dolor facilisis sodales vitae quis sapien. Nulla fringilla elit dolor, sit amet cras amet.")
        event.valid?
        expect(event.errors).to have_key(:description)
    end
  end

end
