class CreateAdminJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :admin_jobs do |t|
      t.references :admin_company, foreign_key: true
      t.string :name
      t.boolean :enabled
      t.text :intro
      t.text :condition
      t.text :welfare
      t.text :salary

      t.timestamps
    end
  end
end
