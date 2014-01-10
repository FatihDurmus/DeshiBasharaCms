class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :subject
      t.text :body
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
