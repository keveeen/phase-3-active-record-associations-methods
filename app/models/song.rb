class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name

    self.genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    # Drake doesn't exist in the database as an artist yet, so you'll have to create a record
    # Hint: you won't want to create an artist record every time this method is called, only if Drake is *not found*

    drake = Artist.find_or_create_by(name: "Drake")

      self.update(artist: drake)

  end
end

# # Find the first user named "Scarlett" or create a new one with a
# # different last name.
# User.find_or_create_by(first_name: 'Scarlett') do |user|
#   user.last_name = 'Johansson'
# end
# # => #<User id: 2, first_name: "Scarlett", last_name: "Johansson">