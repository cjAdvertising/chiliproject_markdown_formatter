require 'redcarpet'
require File.dirname(__FILE__) + '/wikiish_html'

module RedmineMarkdownFormatter

  class WikiFormatter
    def initialize(text)
      @text = text
    end

    def to_html(&block)
      markdown = Redcarpet::Markdown.new(WikiishHTML, :fenced_code_blocks => true, :superscript => true, :space_after_headers => true, :autolink => true, :no_intra_emphasis => true, :tables => true)
      Rails.logger.info("Redcarpetizor!")
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
