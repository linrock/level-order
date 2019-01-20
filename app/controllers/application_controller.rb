class ApplicationController < ActionController::Base

  def inside_container?
    is_a?(DataStructuresController) or
    is_a?(AlgorithmsController) or
    is_a?(ProblemsController)
  end
end
