# Redmine Markdown formatter
require 'redmine'

RAILS_DEFAULT_LOGGER.info 'Starting Markdown formatter for ChiliProject'

Redmine::Plugin.register :chiliproject_markdown_formatter do
  name 'Markdown formatter'
  author 'Larry Baltz'
  description 'This provides Markdown as a wiki format'
  version '0.0.1'

  wiki_format_provider 'markdown', ChiliProjectMarkdownFormatter::WikiFormatter, ChiliProjectMarkdownFormatter::Helper
end
