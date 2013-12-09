class CreateJobs < ActiveRecord::Migration

  def change
    create_table :jobs do |t|
      t.belongs_to :user
      t.belongs_to :restaurant

      t.string :employed_from
      t.string :employed_to
      t.string :job_title

      t.timestamps
    end
  end

end
