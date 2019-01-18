module ApplicationHelper
  def code_block(filename)
    open(Rails.root.join(filename), 'r') do |f|
      code = f.read
      # code.gsub(/\n/, '<br>').gsub(' ', '&nbsp;')
    end.html_safe
  end
end
