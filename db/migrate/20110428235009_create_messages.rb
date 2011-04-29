class CreateMessages < ActiveRecord::Migration
  def self.up
    create_table :messages do |t|
      t.integer :topic_id
      t.integer :user_id
      t.text :content
      t.timestamps
    end
    add_index :messages, [:topic_id, :created_at]
  end
  
  def self.down
    drop_table :messages
  end
end