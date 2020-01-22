class CreateReports < ActiveRecord::Migration[6.0]
  def change
    create_table :reports do |t|
      t.bigint :reportable_id
      t.string :reportable_type
      t.references :user, null: false, foreign_key: true
      t.string :rtype

      t.timestamps
    end
    #add_index :reports, [:reportable_type, :reportable_id]
  end
end
