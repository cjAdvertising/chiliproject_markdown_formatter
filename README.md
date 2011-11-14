# ChiliProject Markdown formatter

This is a redmine plugin for supporting __Markdown__ as a wiki format.

# What is ChiliProject?
ChiliProject is a fork of [Redmine](http://www.redmine.org) a flexible project management web application.
See [the official site](http://www.chiliproject.org) for more details.

# What is Markdown?
(from http://daringfireball.net/projects/markdown/)
Markdown is a text-to-HTML conversion tool for web writers. Markdown allows
you to write using an easy-to-read, easy-to-write plain text format, then
convert it to structurally valid XHTML (or HTML).


See [the article on John Gruber's blog](http://daringfireball.net/projects/markdown/)
for more details.

## Plugin installation

### Prerequisites

* ChiliProject and its prerequisites
* [redcarpet gem (>= 2.0.0b5)](https://github.com/tanoku/redcarpet)

### Installation
 
1. Copy the plugin directory into the `vendor/plugins` directory
2. Start ChiliProject

Installed plugins are listed on __Admin -> Information__ screen.

### Credits

* [Larry Baltz](http://github.com/bitherder) for creating the original
  Redmine Markdown Formatter (using the RDiscount Gem)
* [Yuki Sonoda](http://github.com/yugui) did the real work by creating the
  redmine_rd_formatter
* Jean-Philippe Lang for making the change to RedMine (based on Yuki's patch) to
  allow pluggable formatters

