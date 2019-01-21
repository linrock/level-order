module ApplicationHelper
  def code_block(filename)
    code = open(Rails.root.join(filename), 'r') do |f|
      code = f.read
      # code.gsub(/\n/, '<br>').gsub(' ', '&nbsp;')
    end
    "<pre>#{code}</pre>".html_safe
  end

  def rb_code(filename)
    source = File.read(Rails.root.join(filename))
    formatter = Rouge::Formatters::HTML.new
    lexer = Rouge::Lexers::Ruby.new
    "<pre class='highlight'>#{formatter.format(lexer.lex(source))}</pre>".html_safe
  end
end
