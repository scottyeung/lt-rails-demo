module Blog
  module V1
    class Articles < Grape::API
      version 'v1', using: :path
      format :json
      prefix :api
    
      resource :articles do
        desc 'Return all articles'
        get do
          articles = Article.all
          present articles
        end

        desc 'Create new article'
        post do
          article = Article.new(title: "Hello Rails", body: "I'm on Railz!")
          article.save
        end

        desc 'Return a specific article'
        route_param :id do
          get do
            article = Article.find(params[:id])
            present article
          end
        end  
      end
    end
  end
end