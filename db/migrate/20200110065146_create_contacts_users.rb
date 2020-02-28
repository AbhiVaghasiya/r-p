class CreateContactsUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts_users do |t|
      t.references :contact, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
