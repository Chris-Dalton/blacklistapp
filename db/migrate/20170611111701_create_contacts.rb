class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_Name
      t.string :last_Name
      t.string :email
      t.text :comments
      t.timestamps
    end
  end
end
