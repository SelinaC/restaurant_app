class CreateSearches < ActiveRecord::Migration
  def up
    ActiveRecord::Base.connection.execute <<-SQL

      CREATE VIEW searches AS
        SELECT users.id AS searchable_id, users.first_name AS term, CAST ('User' AS varchar) AS searchable_type
        FROM users
        UNION
        SELECT users.id AS searchable_id, users.last_name AS term, CAST ('User' AS varchar) AS searchable_type
        FROM users
        UNION
        SELECT users.id AS searchable_id, users.username AS term, CAST ('User' AS varchar) AS searchable_type
        FROM users
        UNION
        SELECT jobs.id AS searchable_id, jobs.job_title AS term, CAST ('Job' AS varchar) AS searchable_type
        FROM jobs
        UNION
        SELECT restaurants.id AS searchable_id, restaurants.name AS term, CAST ('Restaurant' AS varchar) AS searchable_type
        FROM restaurants
        UNION
        SELECT restaurants.id AS searchable_id, restaurants.town AS term, CAST ('Restaurant' AS varchar) AS searchable_type
        FROM restaurants
        UNION
        SELECT restaurants.id AS searchable_id, restaurants.postcode AS term, CAST ('Restaurant' AS varchar) AS searchable_type
        FROM restaurants

      SQL
  end

  def down
  end

end
