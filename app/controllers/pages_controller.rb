class PagesController < ApplicationController
  def data_structures
    @data_structures = Dir.glob("app/views/data_structures/*.erb").map do |p|
      p
        .gsub(/app\/views\/data_structures\//, '')
        .gsub(/\.erb/, '')
        .gsub(/_/, '-')
    end
  end

  def algorithms
    @algorithms = Dir.glob("app/views/algorithms/*.erb").map do |p|
      p
        .gsub(/app\/views\/algorithms\//, '')
        .gsub(/\.erb/, '')
        .gsub(/_/, '-')
    end
  end
end
