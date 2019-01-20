class PagesController < ApplicationController
  def data_structures
    prefix = "app/views/data_structures/"
    @data_structures = directory_templates(prefix)
  end

  def algorithms
    prefix = "app/views/algorithms/"
    @algorithms = directory_templates(prefix)
  end

  def problems
    prefix = "app/views/problems/"
    @problems = directory_templates(prefix)
  end

  private

  def directory_templates(prefix)
    Dir.glob("#{prefix}*.erb").map do |p|
      p.gsub(/#{prefix}/, '').gsub(/\.erb/, '').gsub(/_/, '-')
    end
  end
end
