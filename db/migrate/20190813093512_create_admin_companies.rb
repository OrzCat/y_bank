class CreateAdminCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_companies do |t|
      t.string :name
      t.text :intro
      t.text :concept
      t.text :report
      t.text :salary

      t.timestamps
    end
  end
end
