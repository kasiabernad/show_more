module ShowMore
  class ApplicationController < ActionController::Base
    def show_more
      partial = params[:partial]
      collection = params[:collection]
      @resources = collection.camelize.singularize.constantize.all
      render 'application/show_more.js', locales: {collection: params[:collection], partial: partial}
    end
  end
end