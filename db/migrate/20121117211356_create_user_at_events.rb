class CreateUserAtEvents < ActiveRecord::Migration
  def change
    create_table :user_at_events do |t|
      t.string :name
      t.text :content

      t.timestamps
    end
  end
end
