class AddAttachmentAvatarToUserAtEvents < ActiveRecord::Migration
  def self.up
    change_table :user_at_events do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :user_at_events, :avatar
  end
end
