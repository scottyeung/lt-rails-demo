module Blog
  module Entities
    class Article << Grape::Entity
      expose :id
      expose :title
      expose :body
    end
  end
end