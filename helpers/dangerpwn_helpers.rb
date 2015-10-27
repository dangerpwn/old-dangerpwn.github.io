require 'ostruct'

module DangerpwnHelpers

    def article_author(name)
        data.authors.fetch(name)        
    end

end
