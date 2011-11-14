require 'albino'
class WikiishHTML < Redcarpet::Render::HTML
  def block_code code, language
    Rails.logger.info("code: #{code}\nlang: #{language.inspect}")
    albino = Albino.new *[code, language].compact
    albino.colorize :O => "cssclass=highlighted-source"
  end
end
