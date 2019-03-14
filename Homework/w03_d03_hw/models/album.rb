require_relative('../db/sql_runner.rb')
require_relative('./artist.rb')

class Album
  attr_accessor :title, :genre
  attr_reader :id, :artist_id

  def initialize(options)
    @title = options['title']
    @genre = options['genre']
    @artist_id = options['artist_id']
    @id = options['id'].to_i if options['id']
  end

  def save
    sql = "INSERT INTO albums
    (title, genre, artist_id)
    VALUES
    ($1, $2, $3)
    RETURNING *"
    values = [@title, @genre, @artist_id]
    returned_array = SqlRunner.run(sql, values)
    album_hash = returned_array[0]
    @id = album_hash['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM albums"
    SqlRunner.run(sql)
  end

  def delete
    sql = "DELETE FROM albums WHERE (id) = ($1)"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def artist
    sql = "SELECT * FROM artists WHERE id = $1"
    values = [@artist_id]
    returned_array = SqlRunner.run(sql, values)
    artist_hash = returned_array[0]
    artist = Artist.new(artist_hash)
    return artist
  end

  def update #does not work
    sql = "UPDATE albums SET (name, genre, artist_id) = ($1, $2, $3) WHERE id = $4"
    values = [@name, @genre, @artist_id, @id]
    SqlRunner.run(sql, values)
  end

  def self.find(id)
    sql = "SELECT * FROM albums WHERE id = $1"
    values = [id]
    hash = SqlRunner.run(sql, values).first
    return Album.new(hash)
  end

end
