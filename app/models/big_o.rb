class BigO
  def initialize(string)
    @string = string
  end

  # adds wrapper spans and exponents
  def to_s
   @string
    .gsub(/\^(\d|[a-z])/, '<sup>\1</sup>')
    .gsub(
      /O\(([^\)]+)\)/,
      '<span class="big-o">O<span class="o">(</span>\1<span class="c">)</span></span>'
    )
  end
end
