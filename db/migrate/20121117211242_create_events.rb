class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      
      t.string    :event_name
      t.string    :event_code
      t.datetime  :created_at
      t.datetime  :updated_at
      t.datetime  :archived_at

      t.timestamps
    end
  end
end
