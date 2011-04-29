class CreateTopics < ActiveRecord::Migration
  def self.up
    create_table :topics do |t|
      t.integer :forum_id
      t.integer :user_id
      t.string :title
      t.timestamps
    end
    add_index :topics, [:forum_id, :updated_at]
  end

  def self.down
    drop_table :topics
  end
end