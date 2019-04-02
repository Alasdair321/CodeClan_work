require_relative('../db/sql_runner')
require_relative('./location')

class User
  attr_reader :id
  attr_accessor :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
  end

  def locations
    sql = 'SELECT locations.*
          FROM locations
          INNER JOIN visits
          ON visits.location_id = locations.id
          WHERE user_id = $1'
    values = [@id]
    users = SqlRunner.run(sql, values)
    return User.map_items(users)
  end

  def save
    sql = 'INSERT INTO users (name)
          VALUES ($1)
          RETURNING id'
    values = [@name]
    user = SqlRunner.run(sql, values).first
    @id = user['id'].to_i
  end

  def self.all
    sql = 'SELECT * FROM users'
    users = SqlRunner.run(sql)
    return users.map { |user| User.new(user) }
  end

  def self.delete_all
    sql = 'DELETE FROM users'
    SqlRunner.run(sql)
  end

  def self.map_items(user_hashes)
    return user_hashes.map { |user| User.new(user) }
  end

end
