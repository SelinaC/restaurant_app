class CreateJobs < ActiveRecord::Migration

  def change
    create_table :jobs do |t|
      t.belongs_to :user
      t.belongs_to :restaurant

      t.datetime :employed_from
      t.datetime :employed_to
      t.string :job_title
      t.text :job_description

      t.timestamps
    end
  end

end
