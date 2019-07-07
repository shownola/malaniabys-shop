class CreateSuppliers < ActiveRecord::Migration[5.2]
  def change
    create_table :suppliers do |t|
      t.string :company_name, null: false
      t.string :contact_name
      t.string :contact_title
      t.string :address
      t.string :city
      t.string :state
      t.integer :postal_code
      t.string :country
      t.string :phone
      t.string :fax
      t.string :phone_other
      t.string :email
      t.string :url


      t.timestamps
    end
  end
end
