class CreateChatrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :chatroom do |t|
      t.string :sessions

      t.timestamps
    end
  end
end
