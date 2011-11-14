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

### Extra Goodies from RedCarpet

By default I enabled __RedCarpet__ʼs `:fenced_code_blocks` so you can 
syntax highlight you code snippets everywhere you like by specifying the
language after three backticks:

<pre>
```ruby
  def puts msg
    Kernel.puts msg
  end
```
</pre>

To make use of this you have to include a pygments css theme into redmine.

Simply place a pygments css like the [Solarized Light Theme](https://gist.github.com/1272660)
under `public/stylesheets/pygments/solarized.css` and then add the following to
`app/views/layouts/base.rhtml` right after the other `stylesheet_link_tag`s:

    <%= stylesheet_link_tag 'pygments/solarized', :media => 'all' %>

### Credits

* [Larry Baltz](http://github.com/bitherder) for creating the original
  Redmine Markdown Formatter (using the RDiscount Gem)
* [Yuki Sonoda](http://github.com/yugui) did the real work by creating the
  redmine_rd_formatter
* Jean-Philippe Lang for making the change to RedMine (based on Yuki's patch) to
  allow pluggable formatters

