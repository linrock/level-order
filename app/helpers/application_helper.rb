module ApplicationHelper
  def code_block(filename)
    code = open(Rails.root.join(filename), 'r') do |f|
      code = f.read
    end
    %(<pre class="hljs">#{code}</pre>).html_safe
  end

  def rb_code(filename)
    source = File.read(Rails.root.join(filename))
    formatter = Rouge::Formatters::HTML.new
    lexer = Rouge::Lexers::Ruby.new
    code = formatter.format(lexer.lex(source))
    %(<pre class="highlight">#{code}</pre>).html_safe
  end

  def rb_code_inline(&block)
    render layout: 'partials/ruby_code' do
      block.call
    end
  end

  # data structure time of operations + space
  def data_structure_complexity_table(&block)
    render layout: 'partials/data_structure_complexity_table' do
      block.call
    end
  end

  # list of solutions and time/space complexities for a problem
  def solutions_table(&block)
    render layout: 'partials/solutions_table' do
      block.call
    end
  end

  # time/space for each solution to a problem
  def complexity_table(&block)
    render layout: 'partials/complexity_table' do
      block.call
    end
  end

  def solution_explanation(&block)
    render layout: 'partials/solution_explanation' do
      block.call
    end
  end

  def resources_section(&block)
    render layout: 'partials/resources_section' do
      block.call
    end
  end

  def explanation(&block)
    render layout: 'partials/solution_explanation' do
      block.call
    end
  end
end
