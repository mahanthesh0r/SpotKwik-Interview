class User < ApplicationRecord
    has_many :h1
    has_many :h2
    has_many :h3
    has_many :friendships
    has_many :friends, :through => :friendships

    before_create :slugify
    before_create :shorten
    
    def slugify
        self.slug = name.parameterize
    end

    def shorten
        self.short_url = ShortURL.shorten(url)
    end
end
