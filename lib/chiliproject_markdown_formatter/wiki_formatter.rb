require 'redcarpet'

module ChiliprojectMarkdownFormatter

  class WikiFormatter
    def initialize(text)
      @text = text
    end

    def to_html(&block)
      markdown = Redcarpet::Markdown.new(HTMLwithSyntaxHighlighting, :fenced_code_blocks => true, :superscript => true, :space_after_headers => true, :autolink => true, :no_intra_emphasis => true, :tables => true)
      html = markdown.render(@text)
      html.gsub(/<a\s/, "<a class='external'") # Add the `external` class to every link
    rescue => e
      return("<pre>problem parsing wiki text: #{e.message}\n"+
             "original text: \n"+
             @text+
             "</pre>")
    end
  end
end

class HTMLwithSyntaxHighlighting < Redcarpet::Render::HTML
  def block_code(code, language)
    '<pre><code class="' + language + ' syntaxhl">' + Redmine::SyntaxHighlighting.highlight_by_language(code, language) + '</code></pre>'
  end
end
