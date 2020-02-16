class CreatePayments < ActiveRecord::Migration[6.0]
  def change
    create_table :payments do |t|
      t.string :description
      t.float :amount
      t.string :timelog

      t.timestamps
    end
  end
end
