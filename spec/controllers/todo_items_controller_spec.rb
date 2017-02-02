require "rails_helper"

describe TodoItemsController do
  describe "PATCH update" do
    context "when completed is passed in" do
      it "records completion date" do
        Timecop.freeze(Time.zone.local(2016, 12, 25))
        todo_item = create(:todo_item)

        patch :update, id: todo_item.id, completed: true

        todo_item.reload
        expect(todo_item.completed_at).to eq Time.zone.local(2016, 12, 25)

        Timecop.return
      end
    end
  end
end
