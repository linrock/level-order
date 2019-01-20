class ProblemsController < ApplicationController
  layout 'problems'

  def index
    @problems = Dir.glob("app/views/problems/*.erb").map do |p|
      p
        .gsub(/app\/views\/problems\//, '')
        .gsub(/\.erb/, '')
        .gsub(/_/, '-')
    end.select {|p| p != "index" }
  end

  def show
    render "problems/#{params[:problem].gsub(/-/, '_')}"
  end
end
