class CreateAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :accounts do |t|
      t.belongs_to :user
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :phone_num

      t.timestamps
    end
  end
end
