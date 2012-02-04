class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :company_name
      t.string :nick_name

      t.timestamps
    end
  end
end
