class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
