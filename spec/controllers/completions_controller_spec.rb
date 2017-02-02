require "rails_helper"

describe CompletionsController do
  describe "POST create" do
    it "records completion date" do
      Timecop.freeze(Time.zone.local(2016, 12, 25))
      todo_item = create(:todo_item)

      post :create, todo_item_id: todo_item.id

      todo_item.reload
      expect(todo_item.completed_at).to eq Time.zone.local(2016, 12, 25)

      Timecop.return
    end
  end
end
