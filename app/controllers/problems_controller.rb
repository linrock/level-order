class ProblemsController < ApplicationController

  def show
    render "problems/#{params[:problem].gsub(/-/, '_')}"
  end
end
