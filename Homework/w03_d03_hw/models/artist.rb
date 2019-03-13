require_relative('../db/sql_runner.rb')
require_relative('./album.rb')

class Artist
  attr_accessor :name
  attr_reader :id

  def initialize(options)
    @name = options['name']
    @id = options['id'].to_i if options['id']
  end

  def save
    sql = "INSERT INTO artists
    (name)
    VALUES
    ($1)
    RETURNING *"
    values = [@name]
    returned_array = SqlRunner.run(sql, values)
    artist_hash = returned_array[0]
    id_string = artist_hash['id']
    @id = id_string.to_i
  end

  def self.delete_all()
    sql = "DELETE FROM artists"
    SqlRunner.run(sql)
  end

  def albums
    sql = "SELECT * FROM albums WHERE artist_id = $1"
    values = [@id]
    returned_array = SqlRunner.run(sql, values)
    album_objects = returned_array.map { |album| Album.new(album) }
    return album_objects
  end

end
