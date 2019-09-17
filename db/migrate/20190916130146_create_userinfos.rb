class CreateUserinfos < ActiveRecord::Migration[6.0]
  def change
    create_table :userinfos do |t|
      t.string :leave_approval
      t.timestamp :start_date
      t.timestamp :end_date
      t.string :in_meeting
      t.string :out_of_office

      t.timestamps
    end
  end
end
