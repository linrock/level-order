module ApplicationHelper
  def code_block(filename)
    code = open(Rails.root.join(filename), 'r') do |f|
      code = f.read
      # code.gsub(/\n/, '<br>').gsub(' ', '&nbsp;')
    end
    "<pre>#{code}</pre>".html_safe
  end
end
