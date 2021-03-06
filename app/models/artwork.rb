class Artwork < ApplicationRecord
  validates :title, :image_url, :artist_id, presence: true
  validates :title, uniqueness: { scope: :artist_id }

  belongs_to :artist,
    class_name: 'User',
    foreign_key: :artist_id,
    primary_key: :id

  has_many :artwork_shares,
    class_name: 'ArtworkShare',
    foreign_key: :artwork_id,
    primary_key: :id

  has_many :shared_viewers, through: :artwork_shares, source: :viewer

  has_many :comments, dependent: :destroy,
    class_name: 'Comment',
    foreign_key: :artwork_id,
    primary_key: :id
  
end