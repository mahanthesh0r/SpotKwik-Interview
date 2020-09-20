class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :url, :short_url, :slug
  has_many :h1
  has_many :h2
  has_many :h3
  has_many :friendships
end
