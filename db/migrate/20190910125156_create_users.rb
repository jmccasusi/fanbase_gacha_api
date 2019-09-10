class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.string :email_address, null: false
      t.string :last_activity_at
      t.string :online_status
      t.string :profile_img

      t.timestamps
    end
  end
end
