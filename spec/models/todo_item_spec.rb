require "rails_helper"

describe TodoItem do
  describe "#completed?" do
    context "when completed_at is present" do
      it "returns true" do
        todo_item = build(:todo_item, completed_at: Time.zone.local(2017, 02, 8))

        expect(todo_item).to be_completed
      end
    end

    context "when completed_at is nil" do
      it "returns true" do
        todo_item = build(:todo_item, completed_at: nil)

        expect(todo_item).not_to be_completed
      end
    end
  end
end

