class PresentationController < ApplicationController
  def show
    if File.exists? File.join(RAILS_ROOT, 'app/views/presentation', params[:id])
      if params[:path].nil?
        render "presentation/#{params[:id]}/show"
      else
        render "presentation/#{params[:id]}/#{params[:path]}"
      end
    end
  end
end
