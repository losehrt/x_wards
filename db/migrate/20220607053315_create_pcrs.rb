class CreatePcrs < ActiveRecord::Migration[7.0]
  def change
    create_table :pcrs do |t|
      t.string :inpatient_seq
      t.boolean :is_specail_ward
      t.integer :positived_days
      t.string :patient_no
      t.string :patient_name
      t.string :patient_id
      t.string :ward_bed
      t.string :vs_doctor_id
      t.string :vs_doctor_name
      t.datetime :admitted_at
      t.datetime :examined_at
      t.datetime :reported_at
      t.string :order_code
      t.string :examined_result

      t.timestamps
    end
  end
end
