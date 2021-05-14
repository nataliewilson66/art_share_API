class User < ApplicationRecord
  validates :username, presence: true
  validates :username, uniqueness: true

  has_many :artworks, dependent: :destroy,
    class_name: 'Artwork',
    foreign_key: :artist_id,
    primary_key: :id

  has_many :shares, dependent: :destroy,
    class_name: 'ArtworkShare',
    foreign_key: :viewer_id,
    primary_key: :id

  has_many :shared_artworks, through: :shares, source: :artwork
end