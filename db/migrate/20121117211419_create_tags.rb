class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|

      t.integer   :event_id
      t.integer   :user_at_event_ids
      t.string    :tag

      t.timestamps
    end
  end
end
