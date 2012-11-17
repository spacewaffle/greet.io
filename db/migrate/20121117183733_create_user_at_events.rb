class CreateUserAtEvents < ActiveRecord::Migration
  def change
    create_table :user_at_events do |t|
  
      t.integer   :event_id
      t.integer   :user_id
      t.string    :image
      t.datetime  :created_at
      t.datetime  :updated_at
      t.datetime  :archived_at

      t.timestamps
    end
  end
end
