module Blog
  class Base < Grape::API
    mount Blog::V1::Articles
  end
end