class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :full_name, null: false, default: ""
      t.string :email, null: false, default: ""
      t.string :trello_id, null: false, default: ""

      t.timestamps null: false
    end

    add_index :users, :email, unique: true
    add_index :users, :trello_id
  end
end
